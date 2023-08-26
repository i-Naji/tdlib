// Generates the Dart TDLib API (lib/src/tdapi) from TDLib's td_api.tl.
//
// Run from the repository root:
//
//   dart run generator/generate.dart
//   dart run generator/generate.dart --tl data/td_api.tl --info data/tdlib.json
//
// data/tdlib.json names the TDLib version and commit of data/td_api.tl; both
// are written into the generated code.
import 'dart:convert';
import 'dart:io';

import 'src/dart_emitter.dart';
import 'src/tl_parser.dart';

void main(List<String> args) {
  var tl = 'data/td_api.tl';
  var info = 'data/tdlib.json';
  var out = 'lib/src/tdapi';
  for (var i = 0; i < args.length; i++) {
    switch (args[i]) {
      case '--tl':
        tl = args[++i];
      case '--info':
        info = args[++i];
      case '--out':
        out = args[++i];
      default:
        stderr.writeln('usage: dart run generator/generate.dart '
            '[--tl data/td_api.tl] [--info data/tdlib.json] [--out lib/src/tdapi]');
        exit(64);
    }
  }

  final schema = parseTlSchema(File(tl).readAsStringSync());
  final tdlib = (jsonDecode(File(info).readAsStringSync())
      as Map<String, dynamic>)['tdlib'] as Map<String, dynamic>;
  emitDartApi(
    schema,
    TdlibInfo(
      version: tdlib['version'] as String,
      commit: tdlib['commit'] as String,
      compatibleCommits: [
        for (final c in tdlib['compatibleCommits'] as List? ?? const [])
          c as String,
      ],
    ),
    Directory(out),
  );
  stdout.writeln('${schema.types.length} objects in ${schema.classes.length} '
      'families, ${schema.functions.length} functions (TDLib ${tdlib['version']})');
}
