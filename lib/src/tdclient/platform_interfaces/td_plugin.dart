import 'package:tdlib/src/tdclient/platform_interfaces/td_native_plugin.dart';

/// Low-level access to TDLib's JSON interface on the current platform.
///
/// On Android, iOS, macOS, Windows and Linux this is [TdNativePlugin], backed
/// by the library the package's build hook bundles. On the web it is the
/// tdweb-based plugin. Most apps should use `package:tdlib/td_runtime.dart`
/// instead, which adds a receive isolate, typed requests and lifecycle.
abstract class TdPlugin {
  /// Constructor.
  const TdPlugin();

  /// The platform implementation in use.
  static TdPlugin instance = const TdNativePlugin();

  /// Prepares the platform implementation. On native platforms nothing needs
  /// loading any more (the build hook bundles the library), so this is kept
  /// only for compatibility; [libPath] is ignored there. On the web it loads
  /// tdweb.
  static Future<void> Function([String? libPath])
  initialize = // ignore: prefer_function_declarations_over_variables
      ([libPath]) async {};

  /// Returns the identifier of a new TDLib client. The client sends no
  /// updates until the first request is sent to it.
  int tdCreate();

  /// Receives incoming updates and request responses, waiting up to
  /// [timeout] seconds. Must not be called from two threads at once.
  String? tdReceive([double timeout = 8]);

  /// Sends a JSON [event] to client [clientId]. Thread-safe.
  void tdSend(int clientId, String event);

  /// Executes a synchronous JSON [event] ("Can be called synchronously").
  String? tdExecute(String event);

  /// Sets the callback called when TDLib adds a message to its internal log.
  /// None of the TDLib methods can be called from the callback.
  void setLogMessageCallback(int maxVerbosityLevel, var callback);

  /// Removes the log message callback.
  void removeLogMessageCallback();

  /// Returns the timeout for receiving events (web only).
  num tdGetTimeout();

  /// Creates an instance of TDLib's older per-instance interface.
  @Deprecated('Use tdCreate.')
  int tdJsonClientCreate() => throw UnsupportedError('tdJsonClientCreate');

  /// Destroys an instance created by [tdJsonClientCreate].
  @Deprecated('Use tdCreate.')
  void tdJsonClientDestroy(int clientId) =>
      throw UnsupportedError('tdJsonClientDestroy');

  /// Sends a JSON [event] to the instance [clientId].
  @Deprecated('Use tdSend.')
  void tdJsonClientSend(int clientId, String event) =>
      throw UnsupportedError('tdJsonClientSend');

  /// Receives the next event of the instance [clientId].
  @Deprecated('Use tdReceive.')
  String? tdJsonClientReceive(int clientId, [double timeout = 8]) =>
      throw UnsupportedError('tdJsonClientReceive');

  /// Executes a synchronous JSON [event].
  @Deprecated('Use tdExecute.')
  String? tdJsonClientExecute(String event) =>
      throw UnsupportedError('tdJsonClientExecute');
}
