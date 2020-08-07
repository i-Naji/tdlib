package org.naji.td.tdlib;

import org.drinkless.tdlib.JsonClient;
import android.util.Log;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** TdlibPlugin */
public class TdlibPlugin implements MethodCallHandler {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "channel/to/tdlib");
    channel.setMethodCallHandler(new TdlibPlugin());
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    switch (call.method) {
      case "clientReceive": {
        String res = JsonClient.receive((long) call.argument("client"), (double) call.argument("timeout"));
        result.success(res);
        break;
      }
      case "clientSend": {
        JsonClient.send((long) call.argument("client"), (String) call.argument("query"));
        result.success(null);
        break;
      }
      case "clientExecute": {
        String res = JsonClient.execute((long) call.argument("client"), (String) call.argument("query"));
        result.success(res);
        break;
      }
      case "clientCreate":
        result.success((long) JsonClient.create());
        break;
      case "clientDestroy": {
        JsonClient.destroy((long) call.argument("client"));
        result.success(null);
        break;
      }
      default:
        result.notImplemented();
        break;
    }
  }
}
