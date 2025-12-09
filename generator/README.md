# API generator

Generates `lib/src/tdapi/` from TDLib's schema, `data/td_api.tl`.
The TDLib version and commits come from `hook/tdjson_sources.json`, the
manifest of the native libraries, so the API always matches the bundled
libraries (`tdlibVersion`, `tdlibSchemaCommit`, `tdlibCompatibleCommits`).

```console
dart run generator/generate.dart
```

- `src/tl_parser.dart` reads the schema: classes, constructors, functions and
  their documentation.
- `src/dart_emitter.dart` writes one file per class and function plus
  `tdapi.dart`.

The output is formatted by `dart format` afterwards.

`tool/update_tdlib.dart` moves the package to a new TDLib version: it finds the
builds, writes the manifest and `data/td_api.tl`, then runs this generator.
