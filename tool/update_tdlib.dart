// Moves the package to a TDLib version: native builds, schema, API, version.
//
//   dart run tool/update_tdlib.dart                  # newest TDLib with builds
//   dart run tool/update_tdlib.dart --version 1.8.60
//   dart run tool/update_tdlib.dart --own-builds     # fill gaps from i-Naji/libtdjson
//   dart run tool/update_tdlib.dart --dry-run        # only print what it found
//
// Builds (stock TDLib, JSON interface):
//   Android  FaiBah/TDLibAndroidPrebuilt   v<version>-<commit>-JSON
//   iOS      Swiftgram/TDLibFramework      <version>-<commit>
//   desktop  prebuilt-tdlib on npm         0.1<version>.<n>
//
// The schema is the td_api.tl most platforms' builds share; a build with a
// different schema is still used and noted. Writes hook/tdjson_sources.json,
// data/td_api.tl, data/README.md, regenerates lib/src/tdapi and adds a
// CHANGELOG section. Set GITHUB_TOKEN to avoid GitHub's rate limit.
//
// Exit codes: 0 updated, 3 already up to date, 1 error.
import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';

const _github = 'https://api.github.com';
const _raw = 'https://raw.githubusercontent.com/tdlib/td';
const _npm = 'https://registry.npmjs.org';
const _own = 'i-Naji/libtdjson';

const _androidAbis = {
  'android-arm': 'armeabi-v7a',
  'android-arm64': 'arm64-v8a',
  'android-ia32': 'x86',
  'android-x64': 'x86_64',
};
const _iosSlices = {
  'ios-arm64': 'ios-arm64',
  'iossimulator-arm64': 'ios-arm64_x86_64-simulator',
  'iossimulator-x64': 'ios-arm64_x86_64-simulator',
};
const _npmPackages = {
  'linux-arm64': ('linux-arm64-glibc', 'libtdjson.so'),
  'linux-x64': ('linux-x64-glibc', 'libtdjson.so'),
  'macos-arm64': ('darwin-arm64', 'libtdjson.dylib'),
  'macos-x64': ('darwin-x64', 'libtdjson.dylib'),
  'windows-x64': ('win32-x64', 'tdjson.dll'),
};
const _names = {
  'android': 'Android',
  'ios': 'iOS',
  'desktop': 'macOS, Linux and Windows',
};

/// One platform's build of a TDLib version.
class Build {
  Build(this.platform, this.source, this.commit, this.targets);

  final String platform;
  final String source;

  /// Full TDLib commit, resolved from the short one in the release name.
  String commit;
  final Map<String, Map<String, String>> targets;
  String schema = '';

  /// Checksums still to look up (only done for the version that is used,
  /// since a release without a digest has to be downloaded).
  final Map<String, Future<String> Function()> _pendingSha256 = {};

  Future<void> resolveChecksums() async {
    for (final MapEntry(key: target, value: sha256) in _pendingSha256.entries) {
      targets[target]!['sha256'] = await sha256();
    }
    _pendingSha256.clear();
  }
}

final _client = HttpClient();

Future<void> main(List<String> args) async {
  String? version;
  var ownBuilds = false;
  var dryRun = false;
  for (var i = 0; i < args.length; i++) {
    switch (args[i]) {
      case '--version':
        version = args[++i];
      case '--own-builds':
        ownBuilds = true;
      case '--dry-run':
        dryRun = true;
      default:
        stderr.writeln(
          'usage: dart run tool/update_tdlib.dart '
          '[--version X.Y.Z] [--own-builds] [--dry-run]',
        );
        exit(64);
    }
  }
  try {
    exit(await _update(version, ownBuilds: ownBuilds, dryRun: dryRun));
  } on Object catch (e) {
    stderr.writeln('update_tdlib: $e');
    exit(1);
  } finally {
    _client.close(force: true);
  }
}

Future<int> _update(
  String? wanted, {
  required bool ownBuilds,
  required bool dryRun,
}) async {
  final manifestFile = File('hook/tdjson_sources.json');
  final current =
      jsonDecode(manifestFile.readAsStringSync()) as Map<String, dynamic>;
  final currentInfo = current['tdlib'] as Map<String, dynamic>;

  final builds = await _findBuilds();
  final version =
      wanted ??
      (builds.keys.where((v) => builds[v]!.length == 3).toList()
            ..sort(_compareVersions))
          .lastOrNull;
  if (version == null) throw 'no TDLib version has builds for every platform';
  final found = builds[version] ?? const <String, Build>{};
  if (found.isEmpty) throw 'no builds of TDLib $version';

  // Group the builds by schema; the biggest group decides.
  for (final b in found.values) {
    await b.resolveChecksums();
    b.commit = await _fullCommit(b.commit);
    b.schema = await _text('$_raw/${b.commit}/td/generate/scheme/td_api.tl');
  }
  final groups = <String, List<Build>>{};
  for (final b in found.values) {
    groups.putIfAbsent(b.schema, () => []).add(b);
  }
  final best = groups.values.reduce((a, b) => b.length > a.length ? b : a);
  final schemaCommit = (best.firstWhere(
    (b) => b.platform == 'desktop',
    orElse: () => best.first,
  )).commit;
  if (currentInfo['version'] == version &&
      currentInfo['schemaCommit'] == schemaCommit &&
      !ownBuilds) {
    stdout.writeln('already on TDLib $version ($schemaCommit)');
    return 3;
  }

  final notes = <String>[];
  final targets = <String, Map<String, String>>{};
  final commits = <String>[schemaCommit];
  for (final b in found.values) {
    if (!commits.contains(b.commit)) commits.add(b.commit);
    if (b.schema != best.first.schema) {
      notes.add(
        '${_names[b.platform]} build is from `${b.commit.substring(0, 9)}`, '
        'its schema differs',
      );
    }
    for (final MapEntry(:key, :value) in b.targets.entries) {
      targets[key] = {'source': b.source, 'commit': b.commit, ...value};
    }
  }
  for (final platform in _names.keys.where((p) => !found.containsKey(p))) {
    if (!ownBuilds) {
      throw 'no ${_names[platform]} build of TDLib $version; '
          'pass --own-builds to use $_own';
    }
    targets.addAll(await _ownBuilds(platform, version, schemaCommit));
    notes.add(
      '${platform == 'desktop' ? 'Desktop' : _names[platform]} build from $_own',
    );
  }

  stdout
    ..writeln('TDLib $version, schema $schemaCommit')
    ..writeln(
      found.values.map((b) => '  ${b.platform}: ${b.source}').join('\n'),
    )
    ..writeln(notes.map((n) => '  note: $n').join('\n'));
  if (dryRun) return 0;

  final manifest = {
    'tdlib': {
      'version': version,
      'schemaCommit': schemaCommit,
      'compatibleCommits': commits,
      if (notes.isNotEmpty) 'notes': notes,
    },
    'targets': Map.fromEntries(
      targets.entries.toList()..sort((a, b) => a.key.compareTo(b.key)),
    ),
  };
  manifestFile.writeAsStringSync(
    '${const JsonEncoder.withIndent('  ').convert(manifest)}\n',
  );

  final oldSchema = File('data/td_api.tl').readAsStringSync();
  File('data/td_api.tl').writeAsStringSync(best.first.schema);
  File('data/README.md').writeAsStringSync(
    '[TDLib](https://github.com/tdlib/td) $version API schema, commit '
    '[${schemaCommit.substring(0, 9)}](https://github.com/tdlib/td/blob/$schemaCommit/td/generate/scheme/td_api.tl).\n',
  );
  await _run('dart', ['run', 'generator/generate.dart']);
  await _run('dart', ['format', 'lib/src/tdapi']);

  _setVersion(version);
  final changes = _schemaChanges(oldSchema, best.first.schema);
  final changelog = File('CHANGELOG.md');
  changelog.writeAsStringSync(
    '## $version\n'
    '* Update tdlib to **$version** (`${schemaCommit.substring(0, 9)}`), $changes.\n'
    '${notes.map((n) => '* $n.\n').join()}\n'
    '${changelog.readAsStringSync()}',
  );
  _updateReadme(version, schemaCommit);
  stdout.writeln('updated to TDLib $version');
  return 0;
}

/// Builds per TDLib version, per platform (the newest of each).
Future<Map<String, Map<String, Build>>> _findBuilds() async {
  final out = <String, Map<String, Build>>{};
  void add(String version, Build build) => out
      .putIfAbsent(version, () => {})
      .putIfAbsent(build.platform, () => build);

  for (final release in await _releases('FaiBah/TDLibAndroidPrebuilt')) {
    final m = RegExp(
      r'^v?(\d+\.\d+\.\d+)-(\w+)-JSON$',
    ).firstMatch(release['tag_name'] as String);
    if (m == null) continue;
    final assets = _assets(release);
    final targets = <String, Map<String, String>>{};
    final checksums = <String, Future<String> Function()>{};
    for (final MapEntry(key: target, value: abi) in _androidAbis.entries) {
      final asset = assets['tdlib-JSON-$abi.zip'];
      if (asset == null) break;
      targets[target] = {
        'url': asset.$1,
        'format': 'zip',
        'member': 'libs/$abi/libtdjson.so',
      };
      checksums[target] = asset.$2;
    }
    if (targets.length == 4) {
      final build = Build(
        'android',
        'FaiBah/TDLibAndroidPrebuilt ${release['tag_name']}',
        m[2]!,
        targets,
      ).._pendingSha256.addAll(checksums);
      add(m[1]!, build);
    }
  }

  for (final release in await _releases('Swiftgram/TDLibFramework')) {
    final m = RegExp(
      r'^(\d+\.\d+\.\d+)-(\w+)$',
    ).firstMatch(release['tag_name'] as String);
    final asset = _assets(release)['TDLibFramework.zip'];
    if (m == null || asset == null) continue;
    final build = Build(
      'ios',
      'Swiftgram/TDLibFramework ${release['tag_name']}',
      m[2]!,
      {
        for (final MapEntry(key: target, value: slice) in _iosSlices.entries)
          target: {
            'url': asset.$1,
            'format': 'zip',
            'member':
                'TDLibFramework.xcframework/$slice/TDLibFramework.framework/TDLibFramework',
            'kind': 'static',
          },
      },
    );
    // One zip for every slice: download it at most once.
    Future<String>? sha;
    for (final target in _iosSlices.keys) {
      build._pendingSha256[target] = () => sha ??= asset.$2();
    }
    add(m[1]!, build);
  }

  final main = await _json('$_npm/prebuilt-tdlib') as Map<String, dynamic>;
  final packages = {
    for (final MapEntry(:key, value: (name, _)) in _npmPackages.entries)
      key: await _json('$_npm/@prebuilt-tdlib/$name') as Map<String, dynamic>,
  };
  final versions = (main['versions'] as Map<String, dynamic>).entries
      .toList()
      .reversed;
  for (final MapEntry(key: npmVersion, value: meta) in versions) {
    final tdlib =
        (meta as Map<String, dynamic>)['tdlib'] as Map<String, dynamic>?;
    if (tdlib == null) continue;
    final targets = <String, Map<String, String>>{};
    for (final MapEntry(key: target, value: (_, member))
        in _npmPackages.entries) {
      final dist =
          ((packages[target]!['versions'] as Map)[npmVersion] as Map?)?['dist']
              as Map?;
      if (dist == null) break;
      targets[target] = {
        'url': dist['tarball'] as String,
        'format': 'tgz',
        'member': 'package/$member',
        'integrity': dist['integrity'] as String,
      };
    }
    if (targets.length == _npmPackages.length) {
      add(
        tdlib['version'] as String,
        Build(
          'desktop',
          'prebuilt-tdlib $npmVersion',
          tdlib['commit'] as String,
          targets,
        ),
      );
    }
  }
  return out;
}

/// Targets for [platform] from i-Naji/libtdjson, hashed from the real files.
Future<Map<String, Map<String, String>>> _ownBuilds(
  String platform,
  String version,
  String commit,
) async {
  final base = 'https://github.com/$_own/releases/download/v$version';
  final files = switch (platform) {
    'android' => {
      for (final MapEntry(:key, value: abi) in _androidAbis.entries)
        key: ('libtdjson-android-$abi.zip', 'zip', '$abi/libtdjson.so', null),
    },
    'ios' => {
      for (final key in _iosSlices.keys)
        key: ('libtdjson-$key.zip', 'zip', 'libtdjson.dylib', null),
    },
    _ => {
      'linux-arm64': (
        'libtdjson-linux-arm64.tar.gz',
        'tgz',
        'libtdjson.so',
        null,
      ),
      'linux-x64': ('libtdjson-linux-x64.tar.gz', 'tgz', 'libtdjson.so', null),
      'macos-arm64': (
        'libtdjson-macos-universal.tar.gz',
        'tgz',
        'libtdjson.dylib',
        'fat',
      ),
      'macos-x64': (
        'libtdjson-macos-universal.tar.gz',
        'tgz',
        'libtdjson.dylib',
        'fat',
      ),
      'windows-x64': (
        'libtdjson-windows-x64.tar.gz',
        'tgz',
        'tdjson.dll',
        null,
      ),
    },
  };
  return {
    for (final MapEntry(:key, value: (file, format, member, kind))
        in files.entries)
      key: {
        'source': '$_own v$version',
        'commit': commit,
        'url': '$base/$file',
        'format': format,
        'member': member,
        'kind': ?kind,
        'sha256': await _sha256('$base/$file'),
      },
  };
}

/// Asset name -> (download URL, its sha256).
Map<String, (String, Future<String> Function())> _assets(
  Map<String, dynamic> release,
) => {
  for (final a in (release['assets'] as List).cast<Map<String, dynamic>>())
    a['name'] as String: (
      a['browser_download_url'] as String,
      () async {
        final digest = a['digest'] as String?;
        return digest != null && digest.startsWith('sha256:')
            ? digest.substring(7)
            : _sha256(a['browser_download_url'] as String);
      },
    ),
};

Future<List<Map<String, dynamic>>> _releases(String repo) async => [
  for (var page = 1; page <= 3; page++)
    ...((await _json('$_github/repos/$repo/releases?per_page=100&page=$page'))
            as List)
        .cast<Map<String, dynamic>>(),
];

Future<String> _fullCommit(String short) async => short.length == 40
    ? short
    : ((await _json('$_github/repos/tdlib/td/commits/$short')) as Map)['sha']
          as String;

Future<Object?> _json(String url) async => jsonDecode(await _text(url));

Future<String> _text(String url) async {
  final response = await _get(url);
  return response.transform(utf8.decoder).join();
}

Future<String> _sha256(String url) async {
  final response = await _get(url);
  return (await sha256.bind(response).first).toString();
}

Future<HttpClientResponse> _get(String url) async {
  final request = await _client.getUrl(Uri.parse(url));
  final token = Platform.environment['GITHUB_TOKEN'];
  if (token != null && url.startsWith(_github)) {
    request.headers.set('authorization', 'Bearer $token');
  }
  final response = await request.close();
  if (response.statusCode != 200) {
    await response.drain<void>();
    throw HttpException('${response.statusCode}', uri: Uri.parse(url));
  }
  return response;
}

Future<void> _run(String command, List<String> args) async {
  final result = await Process.run(command, args, runInShell: true);
  if (result.exitCode != 0) {
    throw '$command ${args.join(' ')} failed:\n${result.stderr}';
  }
}

void _setVersion(String version) {
  final pubspec = File('pubspec.yaml');
  pubspec.writeAsStringSync(
    pubspec.readAsStringSync().replaceFirst(
      RegExp(r'^version: .*$', multiLine: true),
      'version: $version',
    ),
  );
}

void _updateReadme(String version, String commit) {
  final readme = File('README.md');
  readme.writeAsStringSync(
    readme
        .readAsStringSync()
        .replaceAllMapped(
          RegExp(r'(https://github\.com/tdlib/td/tree/)[0-9a-f]+\) v[0-9.]+'),
          (m) => '${m[1]}$commit) v$version',
        )
        .replaceAllMapped(
          RegExp(
            r'(https://pub\.dev/packages/tdlib/versions/)[^/)]+(/install)',
          ),
          (m) => '${m[1]}$version${m[2]}',
        ),
  );
}

/// "objects +a/−b/~c, functions +a/−b/~c" between two schemas.
String _schemaChanges(String before, String after) {
  (Map<String, String>, Map<String, String>) read(String schema) {
    final types = <String, String>{}, functions = <String, String>{};
    var section = types;
    for (final raw in schema.split('\n')) {
      final line = raw.trim();
      if (line == '---functions---') section = functions;
      final m = RegExp(r'^(\w+)\s*(.*?)\s*=\s*(\w+);$').firstMatch(line);
      if (m == null || line.startsWith('vector')) continue;
      if (const {
        'Double',
        'String',
        'Int32',
        'Int53',
        'Int64',
        'Bytes',
        'Bool',
      }.contains(m[3])) {
        continue;
      }
      section[m[1]!] = '${m[2]} = ${m[3]}';
    }
    return (types, functions);
  }

  String diff(Map<String, String> a, Map<String, String> b) {
    final added = b.keys.where((k) => !a.containsKey(k)).length;
    final removed = a.keys.where((k) => !b.containsKey(k)).length;
    final changed = a.keys
        .where((k) => b.containsKey(k) && a[k] != b[k])
        .length;
    return '+$added/−$removed/~$changed';
  }

  final (oldTypes, oldFunctions) = read(before);
  final (newTypes, newFunctions) = read(after);
  return 'objects ${diff(oldTypes, newTypes)}, functions ${diff(oldFunctions, newFunctions)}';
}

int _compareVersions(String a, String b) {
  final x = a.split('.').map(int.parse).toList(),
      y = b.split('.').map(int.parse).toList();
  for (var i = 0; i < 3; i++) {
    if (x[i] != y[i]) return x[i].compareTo(y[i]);
  }
  return 0;
}
