package org.naji.td.tdlib_example;

import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import org.naji.td.tdlib.TdlibPlugin;

public class EmbedderV1Activity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    TdlibPlugin.registerWith(registrarFor("org.naji.td.tdlib.TdlibPlugin"));
  }
}
