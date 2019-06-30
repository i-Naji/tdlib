part of '../tdapi.dart';

class ConnectionState implements TLObject {
  /// Describes the current state of the connection to Telegram servers
  ConnectionState();

  /// a ConnectionState return type can be :
  /// * ConnectionStateConnecting
  /// * ConnectionStateUpdating
  /// * ConnectionStateWaitingForNetwork
  /// * ConnectionStateReady
  /// * ConnectionStateConnectingToProxy
  factory ConnectionState.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case ConnectionStateConnecting.CONSTRUCTOR:
        return ConnectionStateConnecting.fromJson(json);
      case ConnectionStateUpdating.CONSTRUCTOR:
        return ConnectionStateUpdating.fromJson(json);
      case ConnectionStateWaitingForNetwork.CONSTRUCTOR:
        return ConnectionStateWaitingForNetwork.fromJson(json);
      case ConnectionStateReady.CONSTRUCTOR:
        return ConnectionStateReady.fromJson(json);
      case ConnectionStateConnectingToProxy.CONSTRUCTOR:
        return ConnectionStateConnectingToProxy.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'connectionState';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ConnectionStateWaitingForNetwork implements ConnectionState {
  /// Currently waiting for the network to become available. Use SetNetworkType to change the available network type.
  ///
  ConnectionStateWaitingForNetwork();

  /// Parse from a json
  ConnectionStateWaitingForNetwork.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'connectionStateWaitingForNetwork';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ConnectionStateConnectingToProxy implements ConnectionState {
  /// Currently establishing a connection with a proxy server.
  ///
  ConnectionStateConnectingToProxy();

  /// Parse from a json
  ConnectionStateConnectingToProxy.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'connectionStateConnectingToProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ConnectionStateConnecting implements ConnectionState {
  /// Currently establishing a connection to the Telegram servers.
  ///
  ConnectionStateConnecting();

  /// Parse from a json
  ConnectionStateConnecting.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'connectionStateConnecting';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ConnectionStateUpdating implements ConnectionState {
  /// Downloading data received while the client was offline.
  ///
  ConnectionStateUpdating();

  /// Parse from a json
  ConnectionStateUpdating.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'connectionStateUpdating';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ConnectionStateReady implements ConnectionState {
  /// There is a working connection to the Telegram servers.
  ///
  ConnectionStateReady();

  /// Parse from a json
  ConnectionStateReady.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'connectionStateReady';

  @override
  String getConstructor() => CONSTRUCTOR;
}
