package org.naji.td.tdlib;

import android.os.Looper;
import android.os.Handler;
import android.content.Context;
// import android.util.Log;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.*;

import org.drinkless.tdlib.JsonClient;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.EventChannel.EventSink;
import io.flutter.plugin.common.EventChannel.StreamHandler;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

// todo: no context
/** TdlibPlugin */
public class TdlibPlugin implements MethodCallHandler, FlutterPlugin {
  private static final String TDLIB_CHANNEL_NAME = "channel/to/tdlib";
  private static final String TDLIB_RECEIVE_CHANNEL_NAME = "channel/to/tdlib/receive";
  private MethodChannel methodChannel;
  private EventChannel eventChannel;
  private final List<Client> clients = new ArrayList<Client>();

  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final TdlibPlugin plugin = new TdlibPlugin();
    plugin.setupEventChannels(registrar.context(), registrar.messenger());
  }

  // MethodChannel.Result wrapper that responds on the platform thread.
  private static class MethodResultWrapper implements Result {
    private final Result methodResult;
    private final Handler handler;

    MethodResultWrapper(Result result) {
      methodResult = result;
      handler = new Handler(Looper.getMainLooper());
    }

    @Override
    public void success(final Object result) {
      handler.post(
        new Runnable() {
          @Override
          public void run() {
            methodResult.success(result);
          }
        }
      );
    }

    @Override
    public void error(
            final String errorCode, final String errorMessage, final Object errorDetails) {
      handler.post(
        new Runnable() {
          @Override
          public void run() {
            methodResult.error(errorCode, errorMessage, errorDetails);
          }
        }
      );
    }

    @Override
    public void notImplemented() {
      handler.post(
        new Runnable() {
          @Override
          public void run() {
            methodResult.notImplemented();
          }
        }
      );
    }
  }

  @Override
  public void onMethodCall(MethodCall call, Result rawResult) {
    Result result = new MethodResultWrapper(rawResult);

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
        long clientId  = call.argument("client");
        for (Client entry : clients) {
          // Log.i("call", String.valueOf(entry.clientId));
          if (entry.clientId == clientId){
            entry.close();
            JsonClient.destroy((long) clientId);
            clients.remove(entry);
            break;
          }
        }

        result.success(null);
        break;
      }
      default:
        result.notImplemented();
        break;
    }
  }

  private static class Client implements Runnable {

    private volatile boolean stopFlag = false;
    private final Handler handler;
    private final EventSink events;
    private final long clientId;

    Client(long clientId, EventSink events){
      this.clientId = clientId;
      this.events = events;
      handler = new Handler(Looper.getMainLooper());
    }

    @Override
    public void run() {
      while (!stopFlag) {
        final String res = JsonClient.receive((long) clientId, (double) 30.0);
        handler.post(
          new Runnable() {
            @Override
            public void run() {
              events.success(res);
            }
          }
        );
      }
    }

    @Override
    protected void finalize() throws Throwable{
      close();
      super.finalize();
    }

    public void close() {
      stopFlag = true;
    }
  }
  
  @Override
  public void onDetachedFromEngine(FlutterPluginBinding binding) {
    teardownEventChannels();
  }

  @Override
  public void onAttachedToEngine(FlutterPluginBinding binding) {
    final Context context = binding.getApplicationContext();
    setupEventChannels(context, binding.getBinaryMessenger());
  }

  private void setupEventChannels(Context context, BinaryMessenger messenger) {
    methodChannel = new MethodChannel(messenger, TDLIB_CHANNEL_NAME);
    eventChannel  = new EventChannel(messenger, TDLIB_RECEIVE_CHANNEL_NAME);

    eventChannel.setStreamHandler(new StreamHandler() {
      private Client client;

      @Override
      public void onListen(Object arguments, EventSink events) {
        long clientId = ((Number) arguments).longValue();
        for (Client entry : clients) {
          if (entry.clientId == clientId){
            events.error("UNAVAILABLE", "This Client Already is being listened to ", null);
            return;
          }
        }
        client = new Client(clientId, events);
        clients.add(client);
        new Thread(client, String.format("TDLib Client#%s", clientId)).start();
      }

      @Override
      public void onCancel(Object args) {
        // Log.i("onCancel", args.toString());
        client.close();
        clients.remove(client);
      }
    });
    methodChannel.setMethodCallHandler(this);

  }

  private void teardownEventChannels() {
    methodChannel.setMethodCallHandler(null);
    methodChannel = null;
    eventChannel.setStreamHandler(null);
    eventChannel = null;
    for (Client entry : clients) {
      if (!entry.stopFlag){
        entry.close();
        JsonClient.destroy(entry.clientId);
      }
    }
    clients.clear();
  }
}
