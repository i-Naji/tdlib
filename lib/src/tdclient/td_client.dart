import 'dart:convert' show json;

import 'package:tdlib/src/tdapi/tdapi.dart'
    show TdObject, TdFunction, convertToObject;

import 'platform_interfaces/td_plugin.dart';

export 'platform_interfaces/td_plugin.dart';
export 'platform_interfaces/td_native_plugin.dart';

part 'td_json_client.dart';

// Low-level TDLib JSON interface, kept from 1.x. Works on every platform
// including the web. On native platforms prefer `package:tdlib/td_runtime.dart`,
// which runs td_receive in a background isolate and routes responses to typed
// futures.
//
// TDLib rules that apply here: responses carry the "@extra" of their request
// and the "@client_id" of their client; td_receive must never run on two
// threads at once; updates and responses must be applied in the order they
// were received; every client must be closed before the app terminates.

/// Returns the identifier of a new TDLib client (0 means none). The client
/// sends no updates until the first request is sent to it.
int tdCreate() => TdPlugin.instance.tdCreate();

/// Receives the next update or response, waiting up to [timeout] seconds.
/// Blocks the calling isolate: don't call it on Flutter's UI isolate.
TdObject? tdReceive([double timeout = 8]) {
  final res = TdPlugin.instance.tdReceive(timeout);
  return convertToObject(res);
}

/// Sends [event] to client [clientId], tagged with [extra] if given.
void tdSend(int clientId, TdFunction event, [dynamic extra]) {
  final req = json.encode(event.toJson(extra));
  TdPlugin.instance.tdSend(clientId, req);
}

/// Executes [event] synchronously; only requests documented as
/// "Can be called synchronously" ([TdFunction.canBeCalledSynchronously]).
TdObject? tdExecute(TdFunction event) {
  final req = json.encode(event.toJson());
  final res = TdPlugin.instance.tdExecute(req);
  return convertToObject(res);
}
