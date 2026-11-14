// Build hook: bundles the TDLib JSON library (libtdjson) for the target
// platform as a code asset. Runs automatically when an app that depends on
// this package is built (Flutter 3.38 / Dart 3.10 or newer).
//
// The library comes from the manifest in hook/tdjson_sources.json: each
// target names a download, its SHA-256 and the file inside the archive.
// Downloads are cached in the hooks' shared output directory, so they happen
// once per TDLib version (and again after `flutter clean`).
//
// Settings, in the app's pubspec.yaml:
//
//   hooks:
//     user_defines:
//       tdlib:
//         library_path: path/to/libtdjson.so   # use this file, no download
//         sources: path/to/my_sources.json     # your own manifest / mirror
//         proxy: 127.0.0.1:8080                # HTTP proxy for downloads
//
// Each target is checked with "sha256" (hex) or "integrity" (an npm-style
// "sha512-<base64>" value). "kind" says what the extracted file is:
//   (absent) a dynamic library, used as is
//   "fat"    a universal macOS library, thinned to the target architecture
//   "static" an iOS static library (Swiftgram/TDLibFramework), linked into
//            a dynamic library with Xcode's clang

import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:code_assets/code_assets.dart';
import 'package:crypto/crypto.dart' as crypto;
import 'package:hooks/hooks.dart';

/// Must match `@DefaultAsset` in lib/src/tdclient/tdjson_bindings.dart.
const _assetName = 'src/tdclient/tdjson_bindings.dart';

void main(List<String> args) async {
  await build(args, (input, output) async {
    if (!input.config.buildCodeAssets) return;
    final code = input.config.code;

    void addAsset(Uri file) => output.assets.code.add(
      CodeAsset(
        package: input.packageName,
        name: _assetName,
        linkMode: DynamicLoadingBundled(),
        file: file,
      ),
    );

    final ownLibrary = input.userDefines.path('library_path');
    if (ownLibrary != null) {
      output.dependencies.add(ownLibrary);
      addAsset(ownLibrary);
      return;
    }

    final manifestUri =
        input.userDefines.path('sources') ??
        input.packageRoot.resolve('hook/tdjson_sources.json');
    output.dependencies.add(manifestUri);
    final manifest =
        jsonDecode(await File.fromUri(manifestUri).readAsString())
            as Map<String, dynamic>;
    final targets = manifest['targets'] as Map<String, dynamic>;

    final key = _targetKey(code);
    final target = targets[key] as Map<String, dynamic>?;
    if (target == null) {
      throw UnsupportedError(
        'tdlib: no TDLib build for "$key" in $manifestUri. Add one, or set '
        'hooks.user_defines.tdlib.library_path in your pubspec.yaml.',
      );
    }

    final checksum = _Checksum.of(target);
    final cache = Directory.fromUri(
      input.outputDirectoryShared.resolve('tdjson/${checksum.hex}/'),
    );
    final proxy = input.userDefines['proxy'] as String?;
    final archive = await _download(
      manifestUri.resolve(target['url'] as String),
      checksum,
      cache,
      proxy,
    );
    final member = target['member'] as String;
    var library = await _extract(
      archive,
      target['format'] as String,
      member,
      File.fromUri(cache.uri.resolve('extracted/$member')),
    );
    if (target['kind'] == 'static') {
      library = await _linkAppleStatic(library, code, cache);
    } else if (target['kind'] == 'fat') {
      library = await _thinMacOS(library, code, cache);
    }
    addAsset(library.uri);
  });
}

String _targetKey(CodeConfig code) {
  final a = code.targetArchitecture;
  final arch = a == Architecture.arm64
      ? 'arm64'
      : a == Architecture.arm
      ? 'arm'
      : a == Architecture.x64
      ? 'x64'
      : a == Architecture.ia32
      ? 'ia32'
      : a.name;
  final os = code.targetOS;
  if (os == OS.android) return 'android-$arch';
  if (os == OS.linux) return 'linux-$arch';
  if (os == OS.macOS) return 'macos-$arch';
  if (os == OS.windows) return 'windows-$arch';
  if (os == OS.iOS) {
    final simulator = code.iOS.targetSdk == IOSSdk.iPhoneSimulator;
    return '${simulator ? 'iossimulator' : 'ios'}-$arch';
  }
  return '${os.name}-$arch';
}

/// The expected digest of a download: SHA-256 or SHA-512.
final class _Checksum {
  _Checksum(this.hash, this.hex);

  factory _Checksum.of(Map<String, dynamic> target) {
    final sha256Hex = target['sha256'] as String?;
    if (sha256Hex != null) return _Checksum(crypto.sha256, sha256Hex);
    final integrity = target['integrity'] as String? ?? '';
    if (integrity.startsWith('sha512-')) {
      final bytes = base64.decode(integrity.substring('sha512-'.length));
      final hex = [
        for (final b in bytes) b.toRadixString(16).padLeft(2, '0'),
      ].join();
      return _Checksum(crypto.sha512, hex);
    }
    throw StateError('tdlib: a target needs "sha256" or a sha512 "integrity"');
  }

  final crypto.Hash hash;
  final String hex;

  Future<bool> matches(File file) async =>
      (await hash.bind(file.openRead()).first).toString() == hex;
}

/// Downloads [url] into [cache] unless a file matching [checksum] is there.
Future<File> _download(
  Uri url,
  _Checksum checksum,
  Directory cache,
  String? proxy,
) async {
  final file = File.fromUri(cache.uri.resolve('download'));
  if (await file.exists() && await checksum.matches(file)) return file;
  await cache.create(recursive: true);
  final partial = File('${file.path}.part');

  if (url.scheme == 'file') {
    await File.fromUri(url).copy(partial.path);
  } else {
    final client = HttpClient();
    if (proxy != null && proxy.isNotEmpty) {
      client.findProxy = (_) => 'PROXY $proxy';
    }
    try {
      // Slow or flaky connections drop large downloads (the iOS build is
      // ~370 MB): retry, continuing from what is already on disk.
      for (var attempt = 1; ; attempt++) {
        try {
          await _fetch(client, url, partial);
          break;
        } on IOException {
          if (attempt == 5) rethrow;
          await Future<void>.delayed(Duration(seconds: 2 * attempt));
        }
      }
    } finally {
      client.close(force: true);
    }
  }

  if (!await checksum.matches(partial)) {
    await partial.delete();
    throw StateError(
      'tdlib: checksum mismatch for $url. The file may have '
      'changed upstream; check hook/tdjson_sources.json.',
    );
  }
  return partial.rename(file.path);
}

/// Downloads [url] into [partial], resuming it if it already has data.
Future<void> _fetch(HttpClient client, Uri url, File partial) async {
  final have = await partial.exists() ? await partial.length() : 0;
  final request = await client.getUrl(url);
  if (have > 0) request.headers.set(HttpHeaders.rangeHeader, 'bytes=$have-');
  final response = await request.close();
  final resumed = response.statusCode == HttpStatus.partialContent;
  if (!resumed && response.statusCode != HttpStatus.ok) {
    await response.drain<void>();
    throw HttpException(
      'tdlib: download failed (${response.statusCode})',
      uri: url,
    );
  }
  final sink = partial.openWrite(
    mode: resumed ? FileMode.append : FileMode.write,
  );
  try {
    await response.pipe(sink);
  } finally {
    await sink.close().catchError((_) {});
  }
}

/// Extracts [member] from a zip or tgz [archive] to [out] (once).
Future<File> _extract(
  File archive,
  String format,
  String member,
  File out,
) async {
  if (await out.exists()) return out;
  await out.parent.create(recursive: true);
  final temp = '${out.path}.part';

  if (format == 'zip') {
    final input = InputFileStream(archive.path);
    try {
      final entry = ZipDecoder().decodeStream(input).findFile(member);
      if (entry == null) {
        throw StateError('tdlib: $member not found in ${archive.path}');
      }
      final output = OutputFileStream(temp);
      entry.writeContent(output);
      await output.close();
    } finally {
      await input.close();
    }
  } else if (format == 'tgz') {
    final tar = TarDecoder().decodeBytes(
      GZipDecoder().decodeBytes(await archive.readAsBytes()),
    );
    final entry = tar.findFile(member);
    if (entry == null) {
      throw StateError('tdlib: $member not found in ${archive.path}');
    }
    final output = OutputFileStream(temp);
    entry.writeContent(output);
    await output.close();
  } else if (format == 'file') {
    await archive.copy(temp);
  } else {
    throw UnsupportedError('tdlib: unknown archive format "$format"');
  }
  return File(temp).rename(out.path);
}

/// Links an iOS static TDLib library into `libtdjson.dylib`, keeping only
/// the `td_*` entry points and what they use.
Future<File> _linkAppleStatic(
  File staticLibrary,
  CodeConfig code,
  Directory cache,
) async {
  final ios = code.iOS;
  final simulator = ios.targetSdk == IOSSdk.iPhoneSimulator;
  final sdk = simulator ? 'iphonesimulator' : 'iphoneos';
  final arch = code.targetArchitecture == Architecture.arm64
      ? 'arm64'
      : 'x86_64';
  final minVersion = simulator
      ? '-mios-simulator-version-min=${ios.targetVersion}'
      : '-miphoneos-version-min=${ios.targetVersion}';
  final out = File.fromUri(
    cache.uri.resolve('linked/$sdk-$arch-${ios.targetVersion}/libtdjson.dylib'),
  );
  if (await out.exists()) return out;
  await out.parent.create(recursive: true);

  final result = await Process.run('xcrun', [
    '--sdk',
    sdk,
    'clang',
    '-dynamiclib',
    '-arch',
    arch,
    minVersion,
    '-Wl,-all_load',
    staticLibrary.path,
    '-lc++',
    '-lz',
    '-Wl,-dead_strip',
    '-Wl,-exported_symbol,_td_*',
    '-install_name',
    '@rpath/libtdjson.dylib',
    '-o',
    '${out.path}.part',
  ]);
  if (result.exitCode != 0) {
    throw ProcessException(
      'xcrun',
      const ['clang'],
      'tdlib: linking libtdjson for $sdk/$arch failed:\n${result.stderr}',
      result.exitCode,
    );
  }
  return File('${out.path}.part').rename(out.path);
}

/// Extracts the target architecture from a universal macOS library.
Future<File> _thinMacOS(
  File universal,
  CodeConfig code,
  Directory cache,
) async {
  final arch = code.targetArchitecture == Architecture.arm64
      ? 'arm64'
      : 'x86_64';
  final out = File.fromUri(cache.uri.resolve('thin/$arch/libtdjson.dylib'));
  if (await out.exists()) return out;
  await out.parent.create(recursive: true);
  final result = await Process.run('xcrun', [
    'lipo',
    universal.path,
    '-thin',
    arch,
    '-output',
    '${out.path}.part',
  ]);
  if (result.exitCode != 0) {
    throw ProcessException(
      'xcrun',
      const ['lipo'],
      'tdlib: thinning libtdjson to $arch failed:\n${result.stderr}',
      result.exitCode,
    );
  }
  return File('${out.path}.part').rename(out.path);
}
