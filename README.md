# TDLib

#### Flutter [Plugin](https://pub.dev/packages/tdlib) for [TDLib (Telegram Database Library)](https://github.com/tdlib/td/tree/6d509061574d684117f74133056aa43df89022fc) v1.8.61

Telegram Tdlib is a complete library for creating telegram clients, it also has a simple tdjson ready-to-use library to ease the integration with different programming languages and platforms.<br>
This plugin is a complete tdlib-tdjson binding package to help you create your own Telegram clients.

See the [example](example/lib/main.dart) for a sample app.

## Installation
[Install](https://pub.dev/packages/tdlib/versions/1.8.61/install) the plugin by running the following command from the project root:
```
flutter pub add tdlib
```
Needs Flutter 3.38 or newer. The tdjson library for Android, iOS, macOS, Linux and Windows is downloaded and bundled by the package's [build hook](https://dart.dev/tools/hooks), builds are listed in [hook/tdjson_sources.json](hook/tdjson_sources.json).

To use your own tdjson build, set its path in your app's `pubspec.yaml`:
```yaml
hooks:
  user_defines:
    tdlib:
      library_path: path/to/libtdjson.so
```
### Web
- Copy all files in [data/web_pkg](/data/web_pkg/) to `web` folder in your project.
- Point `tdlib.js` file in `index.html`:
  ```html
  <!--add this between the <body> tags -->
  <script src="/tdlib.js" type="application/javascript"></script>
  ```
- Call `await TdPlugin.initialize();` before using the plugin.
- `tool/build_tdweb.sh` rebuilds `data/web_pkg` from TDLib sources (needs Docker).

## Usage
### Runtime (Android, iOS, macOS, Linux, Windows)
```dart
import 'package:tdlib/td_runtime.dart' as td;

final runtime = await td.TdRuntime.start(); // checks the native TDLib version
final client = runtime.createClient();

client.updates.listen((update) {}); // every update, in TDLib's order
client.on<td.UpdateNewMessage>().listen((u) {});
client.authorizationStates.listen((state) {}); // current state first

final td.User me = await client.invoke(const td.GetMe()); // throws TdException
client.send(const td.SetOption(name: 'online', value: td.OptionValueBoolean(value: true)));

final log = td.TdRuntime.execute(const td.GetLogVerbosityLevel()); // synchronous requests
await runtime.close(); // closes all clients
```
Optional, ties the runtime to the app lifecycle (online status, resume, quit):
```dart
import 'package:tdlib/td_lifecycle.dart';

TdLifecycle(runtime);
```
### Low-level (every platform, including web)
```dart
import 'package:tdlib/td_api.dart';
import 'package:tdlib/td_client.dart';

await TdPlugin.initialize();
final clientId = tdCreate();
tdSend(clientId, const GetOption(name: 'version'), 1); // 1 comes back as @extra
final TdObject? event = tdReceive(1.0); // blocks, keep it off the UI isolate
```
[Getting started with TDLib](https://core.telegram.org/tdlib/getting-started)
