# TDLib

#### Flutter [Plugin](https://pub.dev/packages/tdlib) for [TDLib (Telegram Database Library)](https://github.com/tdlib/td/tree/789b9c0a554d779945db027fd2612909c676345f) v1.8.0

Telegram Tdlib is a complete library for creating telegram clients, it also has a simple tdjson ready-to-use library to ease the integration with different programming languages and platforms.<br>
This plugin is a complete tdlib-tdjson binding package to help you create your own Telegram clients.

~~See the `example` directory for the complete sample app.~~

## Installation
[Install](https://pub.dev/packages/tdlib/versions/1.5.9/install) the plugin by running the following command from the project root:
```
flutter pub add tdlib
```
## Initialization
This plugin contains only **Android** tdlib-tdjson library. In case of other platforms usage you need to manually put the tdjson library in your project
- for Windows:
  - [Build tdlib-json for windows](https://github.com/tdlib/td#building)
  - Add `.so` file in your project and use it's **path** for initialization.
- for IOS and macOS support:
  - Build tdlib-json by this [instruction](https://github.com/tdlib/td/tree/master/example/ios)
  - [Add compiled file to linked libraries](https://docs.flutter.dev/development/platform-integration/c-interop#compiled-dynamic-library) and use it's **name** for initialization
- for web:
  - Copy all files in [data/web-package](/data/web_pkg/) to `web` folder in your project.
  - Point `tdlib.js` file in `index.html`:
    ```html
    <!--add this between the <body> tags -->
    <script src="/tdlib.js" type="application/javascript"></script>
    ```

To initialize tdlib plugin, call the `initialize` method on the `TdPlugin` class.

Since this is an asynchronous operation, the main function can be modified to ensure initialization is complete before running the application.
> The method accepts LIBTDJSON_PATH for windows platform or LIBTDJSON_NAME for IOS & macOS.

Import `tdlib` plugin:
```dart
import 'package:tdlib/tdlib.dart';
```
Next, within the `main` function, initialize `TdPlugin`:

```dart
// lib/main.dart

void main() async {
  await TdPlugin.initialize();
  runApp(MyApp());
}
```
## Usage
[Getting started with TDLib](https://core.telegram.org/tdlib/getting-started)
