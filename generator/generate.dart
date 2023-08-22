// Generates the Dart TDLib API (lib/src/tdapi) from TDLib's td_api.tl.
//
// Run from the repository root:
//
//   dart run generator/generate.dart
//   dart run generator/generate.dart --tl data/td_api.tl --out lib/src/tdapi
import 'dart:io';

import 'src/dart_emitter.dart';
import 'src/tl_parser.dart';

void main(List<String> args) {
  var tl = 'data/td_api.tl';
  var out = 'lib/src/tdapi';
  for (var i = 0; i < args.length; i++) {
    switch (args[i]) {
      case '--tl':
        tl = args[++i];
      case '--out':
        out = args[++i];
      default:
        stderr.writeln('usage: dart run generator/generate.dart '
            '[--tl data/td_api.tl] [--out lib/src/tdapi]');
        exit(64);
    }
  }

  final schema = parseTlSchema(File(tl).readAsStringSync());
  emitDartApi(schema, Directory(out));
  stdout.writeln('${schema.types.length} objects in ${schema.classes.length} '
      'families, ${schema.functions.length} functions');
}
