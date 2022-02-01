import 'package:tdlib/src/tdclient/platform_interfaces/td_native_plugin_stub.dart';


/// TDLib Library Instance.
abstract class TdPlugin {

  /// TdPlugin instance.
  static TdPlugin instance = TdNativePlugin();

  /// constructor
  const TdPlugin();

  /// This method loads TDLib library.
  static Future<void> Function([String? libPath]) initialize = ([libPath]) async {}; // ignore: prefer_function_declarations_over_variables

  /// Creates a new instance of TDLib.
  /// Returns client id for the created instance of TDLib.
  int tdJsonClientCreate();

  /// Destroys the TDLib client instance by [clientId] identifier. After this is called the client instance must not be used anymore.
  void tdJsonClientDestroy(int clientId);

  /// Sends [event] to the TDLib client by [clientId] identifier. May be called from any thread.
  void tdJsonClientSend(int clientId, String event);

  /// Receives incoming updates and request responses from the TDLib client by [clientId] identifier and [timeout].
  /// May be called from any thread, but shouldn't be called simultaneously from two different threads.
  String? tdJsonClientReceive(int clientId, [double timeout = 8]);

  /// Synchronously executes TDLib [event]. May be called from any thread.
  /// Only a few requests can be executed synchronously.
  String? tdJsonClientExecute(String event);

  /// Returns client id for the created instance of TDLib.
  /// The TDLib instance will not send updates until the first request is sent to it.
  /// 0 mean No client instance.
  int tdCreate();

  /// Receives incoming updates and request responses from the TDLib with [timeout].
  String? tdReceive([double timeout = 8]);

  /// Sends request to the TDLib client. May be called from any thread.
  /// [clientId] is TDLib client identifier.
  /// [event] is JSON-serialized null-terminated request to TDLib.
  void tdSend(int clientId, String event);

  /// Synchronously executes a TDLib request.
  /// A request can be executed synchronously, only if it is documented with "Can be called synchronously".
  /// [event] is JSON-serialized null-terminated request to TDLib.
  String? tdExecute(String event);

  /// Sets the callback that will be called when a message is added to the internal TDLib log.
  /// None of the TDLib methods can be called from the callback.
  /// By default the callback is not set.
  ///
  /// [maxVerbosityLevel] The maximum verbosity level of messages for which the callback will be called.
  ///
  /// [callback] Callback that will be called when a message is added to the internal TDLib log.
  void setLogMessageCallback(int maxVerbosityLevel, var callback);

  /// Removes the log message callback.
  void removeLogMessageCallback();

  /// Returns timeout for receiving events.
  num tdGetTimeout();
}
