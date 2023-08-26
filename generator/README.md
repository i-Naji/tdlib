# API generator

Generates `lib/src/tdapi/` from TDLib's schema, `data/td_api.tl`.
`data/tdlib.json` names the TDLib version and commit the schema comes from;
they end up in `tdlibVersion` and `tdlibSchemaCommit`.

```console
dart run generator/generate.dart
```

- `src/tl_parser.dart` reads the schema: classes, constructors, functions and
  their documentation.
- `src/dart_emitter.dart` writes one file per class and function plus
  `tdapi.dart`.

The output is formatted by `dart format` afterwards.
