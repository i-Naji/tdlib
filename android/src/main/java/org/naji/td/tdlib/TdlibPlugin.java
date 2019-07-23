package org.naji.td.tdlib;

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
        String res = NativeClient.receive((long) call.argument("client"), (double) call.argument("timeout"));
        result.success(res);
        break;
      }
      case "clientSend": {
        NativeClient.send((long) call.argument("client"), (String) call.argument("query"));
        result.success(null);
        break;
      }
      case "clientExecute": {
        String res = NativeClient.execute((String) call.argument("query"));
        result.success(res);
        break;
      }
      case "clientCreate":
        result.success((long) NativeClient.create());
        break;
      case "clientDestroy": {
        NativeClient.destroy((long) call.argument("client"));
        result.success(null);
        break;
      }
      case "logLevel":
        NativeClient.setLogVerbosity((int) call.argument("level"));
        result.success(null);
        break;
      default:
        result.notImplemented();
        break;
    }
  }
  static {
    try {
      System.loadLibrary("tdjsonjava");
      Log.i("TDLib", "TDJson loaded");
    } catch (UnsatisfiedLinkError e) {
      Log.w("TDLib", "Can't find TDJson", e);
    }
  }
}
