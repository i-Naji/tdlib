part of '../tdapi.dart';

class ConnectionState extends TdObject {

  /// Describes the current state of the connection to Telegram servers
  const ConnectionState();
  
  /// a ConnectionState return type can be :
  /// * [ConnectionStateWaitingForNetwork]
  /// * [ConnectionStateConnectingToProxy]
  /// * [ConnectionStateConnecting]
  /// * [ConnectionStateUpdating]
  /// * [ConnectionStateReady]
  factory ConnectionState.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ConnectionStateWaitingForNetwork.CONSTRUCTOR:
        return ConnectionStateWaitingForNetwork.fromJson(json);
      case ConnectionStateConnectingToProxy.CONSTRUCTOR:
        return ConnectionStateConnectingToProxy.fromJson(json);
      case ConnectionStateConnecting.CONSTRUCTOR:
        return ConnectionStateConnecting.fromJson(json);
      case ConnectionStateUpdating.CONSTRUCTOR:
        return ConnectionStateUpdating.fromJson(json);
      case ConnectionStateReady.CONSTRUCTOR:
        return ConnectionStateReady.fromJson(json);
      default:
        return const ConnectionState();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  ConnectionState copyWith() => const ConnectionState();

  static const CONSTRUCTOR = 'connectionState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ConnectionStateWaitingForNetwork extends ConnectionState {

  /// Currently waiting for the network to become available. Use setNetworkType to change the available network type
  const ConnectionStateWaitingForNetwork();
  
  /// Parse from a json
  factory ConnectionStateWaitingForNetwork.fromJson(Map<String, dynamic> json) => const ConnectionStateWaitingForNetwork();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ConnectionStateWaitingForNetwork copyWith() => const ConnectionStateWaitingForNetwork();

  static const CONSTRUCTOR = 'connectionStateWaitingForNetwork';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ConnectionStateConnectingToProxy extends ConnectionState {

  /// Currently establishing a connection with a proxy server
  const ConnectionStateConnectingToProxy();
  
  /// Parse from a json
  factory ConnectionStateConnectingToProxy.fromJson(Map<String, dynamic> json) => const ConnectionStateConnectingToProxy();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ConnectionStateConnectingToProxy copyWith() => const ConnectionStateConnectingToProxy();

  static const CONSTRUCTOR = 'connectionStateConnectingToProxy';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ConnectionStateConnecting extends ConnectionState {

  /// Currently establishing a connection to the Telegram servers
  const ConnectionStateConnecting();
  
  /// Parse from a json
  factory ConnectionStateConnecting.fromJson(Map<String, dynamic> json) => const ConnectionStateConnecting();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ConnectionStateConnecting copyWith() => const ConnectionStateConnecting();

  static const CONSTRUCTOR = 'connectionStateConnecting';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ConnectionStateUpdating extends ConnectionState {

  /// Downloading data received while the application was offline
  const ConnectionStateUpdating();
  
  /// Parse from a json
  factory ConnectionStateUpdating.fromJson(Map<String, dynamic> json) => const ConnectionStateUpdating();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ConnectionStateUpdating copyWith() => const ConnectionStateUpdating();

  static const CONSTRUCTOR = 'connectionStateUpdating';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class ConnectionStateReady extends ConnectionState {

  /// There is a working connection to the Telegram servers
  const ConnectionStateReady();
  
  /// Parse from a json
  factory ConnectionStateReady.fromJson(Map<String, dynamic> json) => const ConnectionStateReady();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  ConnectionStateReady copyWith() => const ConnectionStateReady();

  static const CONSTRUCTOR = 'connectionStateReady';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
