import 'dart:convert' show json;
import 'package:tdlib/src/tdapi/tdapi.dart'
    show TdObject, TdFunction, convertToObject;
import 'platform_interfaces/td_plugin.dart';
export 'platform_interfaces/td_plugin.dart';
export 'platform_interfaces/td_native_plugin.dart';
export 'platform_interfaces/td_web_plugin.dart';

part 'td_json_client.dart';

/// TdLib Client class for interaction with TDLib.
/// The main TDLib interface is asynchronous. To match requests with a corresponding response, the field "[TdFunction.extra]" can
/// be added to the request object. The corresponding response will have an "[TdObject.extra]" field with exactly the same value.
/// Each returned object will have an "[TdObject.client_id]" field, containing the identifier of the client for which
/// a response or an update was received.
///
/// A TDLib client instance can be created through [create].
///
/// Requests can be sent using [send] and the received client identifier.
///
/// New updates and responses to requests can be received through [receive] from any thread after the first request
/// has been sent to the client instance. This function must not be called simultaneously from two different threads.
///
/// Also note that all updates and responses to requests must be applied in the order they were received for consistency.
///
/// Some TDLib requests can be executed synchronously from any thread using td_execute.
///
/// TDLib client instances are destroyed automatically after they are closed.
/// All TDLib client instances must be closed before application termination to ensure data consistency.

/// Returns client id for the created instance of TDLib.
/// The TDLib instance will not send updates until the first request is sent to it.
/// 0 mean No client instance.
int tdCreate() => TdPlugin.instance.tdCreate();

/// Receives incoming updates and request responses from the TDLib with [timeout].
TdObject? tdReceive([double timeout = 8]) {
  final res = TdPlugin.instance.tdReceive(timeout);
  return convertToObject(res);
}

/// Sends request to the TDLib client. May be called from any thread.
/// [clientId] is TDLib client identifier.
/// [event] is [TdFunction] request to TDLib.
void tdSend(int clientId, TdFunction event, [dynamic extra]) {
  final req = json.encode(event.toJson(extra));
  TdPlugin.instance.tdSend(clientId, req);
}

/// Synchronously executes a TDLib request.
/// A request can be executed synchronously, only if it is documented with "Can be called synchronously".
/// [event] is synchronous [TdFunction] request to TDLib.
TdObject? tdExecute(TdFunction event) {
  final req = json.encode(event);
  final res = TdPlugin.instance.tdExecute(req);
  return convertToObject(res);
}
