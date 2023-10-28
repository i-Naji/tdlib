import 'dart:async';
import 'dart:ui' show AppExitResponse;

import 'package:flutter/widgets.dart';

import '../tdapi/tdapi.dart';
import 'td_runtime.dart';

/// Connects a [TdRuntime] to the Flutter app lifecycle.
///
/// * Resumed: restarts the receive isolate if the OS stopped it, and sets
///   `online` for authorized clients.
/// * Hidden: sets `online` to false. TDLib keeps running; the OS decides how
///   long a background app may run.
/// * Exit requested (desktop): closes every client before the app quits,
///   unless [closeOnExit] is false (e.g. the app hides to a tray instead).
///
/// Create it after `WidgetsFlutterBinding.ensureInitialized()` and keep it
/// for the app's lifetime:
///
/// ```dart
/// final runtime = await TdRuntime.start();
/// final lifecycle = TdLifecycle(runtime);
/// ```
final class TdLifecycle {
  /// Starts observing the app lifecycle for [runtime].
  TdLifecycle(
    this.runtime, {
    this.closeOnExit = true,
    this.manageOnlineStatus = true,
  }) {
    _listener = AppLifecycleListener(
      onResume: _onResume,
      onHide: _onHide,
      onExitRequested: _onExitRequested,
    );
  }

  /// The runtime being managed.
  final TdRuntime runtime;

  /// Close all TDLib clients when the app is asked to quit.
  final bool closeOnExit;

  /// Toggle TDLib's `online` option with app visibility.
  final bool manageOnlineStatus;

  late final AppLifecycleListener _listener;

  void _onResume() {
    unawaited(runtime.ensureReceiving().then((_) => _setOnline(true)));
  }

  void _onHide() => _setOnline(false);

  Future<AppExitResponse> _onExitRequested() async {
    if (closeOnExit) await runtime.close();
    return AppExitResponse.exit;
  }

  void _setOnline(bool online) {
    if (!manageOnlineStatus) return;
    for (final client in runtime.clients) {
      if (client.authorizationState is AuthorizationStateReady) {
        // Ignored on failure: an offline TDLib simply can't apply it yet.
        client.setOnline(online).ignore();
      }
    }
  }

  /// Stops observing the lifecycle.
  void dispose() => _listener.dispose();
}
