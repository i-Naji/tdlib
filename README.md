# TDLib

#### Flutter [Plugin](https://pub.dev/packages/tdlib) for [TDLib (Telegram Database Library)](https://github.com/tdlib/td/tree/4f4df7c6436085391e0b6d74cc7a54cf274c7edf) v1.8.56

Telegram Tdlib is a complete library for creating telegram clients, it also has a simple tdjson ready-to-use library to ease the integration with different programming languages and platforms.<br>
This plugin is a complete tdlib-tdjson binding package to help you create your own Telegram clients.

See the [example](example/lib/main.dart) for a sample app.

## Installation
[Install](https://pub.dev/packages/tdlib/versions/1.8.56/install) the plugin by running the following command from the project root:
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

## Usage
```dart
import 'package:tdlib/td_lifecycle.dart';
import 'package:tdlib/td_runtime.dart' as td;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final runtime = await td.TdRuntime.start();
  TdLifecycle(runtime);

  final client = runtime.createClient();
  client.authorizationStates.listen((state) {
    // send td.SetTdlibParameters on AuthorizationStateWaitTdlibParameters, ...
  });
  final td.User me = await client.invoke(const td.GetMe());
}
```
[Getting started with TDLib](https://core.telegram.org/tdlib/getting-started)
