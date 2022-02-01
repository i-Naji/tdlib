part of '../tdapi.dart';

class CallbackQueryPayload extends TdObject {

  /// Represents a payload of a callback query
  const CallbackQueryPayload();
  
  /// a CallbackQueryPayload return type can be :
  /// * [CallbackQueryPayloadData]
  /// * [CallbackQueryPayloadDataWithPassword]
  /// * [CallbackQueryPayloadGame]
  factory CallbackQueryPayload.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CallbackQueryPayloadData.CONSTRUCTOR:
        return CallbackQueryPayloadData.fromJson(json);
      case CallbackQueryPayloadDataWithPassword.CONSTRUCTOR:
        return CallbackQueryPayloadDataWithPassword.fromJson(json);
      case CallbackQueryPayloadGame.CONSTRUCTOR:
        return CallbackQueryPayloadGame.fromJson(json);
      default:
        return const CallbackQueryPayload();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  CallbackQueryPayload copyWith() => const CallbackQueryPayload();

  static const CONSTRUCTOR = 'callbackQueryPayload';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallbackQueryPayloadData extends CallbackQueryPayload {

  /// The payload for a general callback button
  const CallbackQueryPayloadData({
    required this.data,
  });
  
  /// [data] Data that was attached to the callback button
  final String data;
  
  /// Parse from a json
  factory CallbackQueryPayloadData.fromJson(Map<String, dynamic> json) => CallbackQueryPayloadData(
    data: json['data'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "data": data,
    };
  }
  
  @override
  CallbackQueryPayloadData copyWith({
    String? data,
  }) => CallbackQueryPayloadData(
    data: data ?? this.data,
  );

  static const CONSTRUCTOR = 'callbackQueryPayloadData';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallbackQueryPayloadDataWithPassword extends CallbackQueryPayload {

  /// The payload for a callback button requiring password
  const CallbackQueryPayloadDataWithPassword({
    required this.password,
    required this.data,
  });
  
  /// [password] The password for the current user 
  final String password;

  /// [data] Data that was attached to the callback button
  final String data;
  
  /// Parse from a json
  factory CallbackQueryPayloadDataWithPassword.fromJson(Map<String, dynamic> json) => CallbackQueryPayloadDataWithPassword(
    password: json['password'],
    data: json['data'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "password": password,
      "data": data,
    };
  }
  
  @override
  CallbackQueryPayloadDataWithPassword copyWith({
    String? password,
    String? data,
  }) => CallbackQueryPayloadDataWithPassword(
    password: password ?? this.password,
    data: data ?? this.data,
  );

  static const CONSTRUCTOR = 'callbackQueryPayloadDataWithPassword';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallbackQueryPayloadGame extends CallbackQueryPayload {

  /// The payload for a game callback button
  const CallbackQueryPayloadGame({
    required this.gameShortName,
  });
  
  /// [gameShortName] A short name of the game that was attached to the callback button
  final String gameShortName;
  
  /// Parse from a json
  factory CallbackQueryPayloadGame.fromJson(Map<String, dynamic> json) => CallbackQueryPayloadGame(
    gameShortName: json['game_short_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "game_short_name": gameShortName,
    };
  }
  
  @override
  CallbackQueryPayloadGame copyWith({
    String? gameShortName,
  }) => CallbackQueryPayloadGame(
    gameShortName: gameShortName ?? this.gameShortName,
  );

  static const CONSTRUCTOR = 'callbackQueryPayloadGame';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
