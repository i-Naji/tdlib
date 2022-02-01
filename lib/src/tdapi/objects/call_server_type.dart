part of '../tdapi.dart';

class CallServerType extends TdObject {

  /// Describes the type of a call server
  const CallServerType();
  
  /// a CallServerType return type can be :
  /// * [CallServerTypeTelegramReflector]
  /// * [CallServerTypeWebrtc]
  factory CallServerType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CallServerTypeTelegramReflector.CONSTRUCTOR:
        return CallServerTypeTelegramReflector.fromJson(json);
      case CallServerTypeWebrtc.CONSTRUCTOR:
        return CallServerTypeWebrtc.fromJson(json);
      default:
        return const CallServerType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  CallServerType copyWith() => const CallServerType();

  static const CONSTRUCTOR = 'callServerType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallServerTypeTelegramReflector extends CallServerType {

  /// A Telegram call reflector
  const CallServerTypeTelegramReflector({
    required this.peerTag,
  });
  
  /// [peerTag] A peer tag to be used with the reflector
  final String peerTag;
  
  /// Parse from a json
  factory CallServerTypeTelegramReflector.fromJson(Map<String, dynamic> json) => CallServerTypeTelegramReflector(
    peerTag: json['peer_tag'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "peer_tag": peerTag,
    };
  }
  
  @override
  CallServerTypeTelegramReflector copyWith({
    String? peerTag,
  }) => CallServerTypeTelegramReflector(
    peerTag: peerTag ?? this.peerTag,
  );

  static const CONSTRUCTOR = 'callServerTypeTelegramReflector';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallServerTypeWebrtc extends CallServerType {

  /// A WebRTC server
  const CallServerTypeWebrtc({
    required this.username,
    required this.password,
    required this.supportsTurn,
    required this.supportsStun,
  });
  
  /// [username] Username to be used for authentication 
  final String username;

  /// [password] Authentication password 
  final String password;

  /// [supportsTurn] True, if the server supports TURN 
  final bool supportsTurn;

  /// [supportsStun] True, if the server supports STUN
  final bool supportsStun;
  
  /// Parse from a json
  factory CallServerTypeWebrtc.fromJson(Map<String, dynamic> json) => CallServerTypeWebrtc(
    username: json['username'],
    password: json['password'],
    supportsTurn: json['supports_turn'],
    supportsStun: json['supports_stun'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "username": username,
      "password": password,
      "supports_turn": supportsTurn,
      "supports_stun": supportsStun,
    };
  }
  
  @override
  CallServerTypeWebrtc copyWith({
    String? username,
    String? password,
    bool? supportsTurn,
    bool? supportsStun,
  }) => CallServerTypeWebrtc(
    username: username ?? this.username,
    password: password ?? this.password,
    supportsTurn: supportsTurn ?? this.supportsTurn,
    supportsStun: supportsStun ?? this.supportsStun,
  );

  static const CONSTRUCTOR = 'callServerTypeWebrtc';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
