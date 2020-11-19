part of '../tdapi.dart';

class CallbackQueryPayload extends TdObject {
  /// Represents a payload of a callback query
  CallbackQueryPayload();

  /// a CallbackQueryPayload return type can be :
  /// * CallbackQueryPayloadData
  /// * CallbackQueryPayloadDataWithPassword
  /// * CallbackQueryPayloadGame
  factory CallbackQueryPayload.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case CallbackQueryPayloadData.CONSTRUCTOR:
        return CallbackQueryPayloadData.fromJson(json);
      case CallbackQueryPayloadDataWithPassword.CONSTRUCTOR:
        return CallbackQueryPayloadDataWithPassword.fromJson(json);
      case CallbackQueryPayloadGame.CONSTRUCTOR:
        return CallbackQueryPayloadGame.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'callbackQueryPayload';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallbackQueryPayloadData extends CallbackQueryPayload {
  /// The payload for a general callback button
  CallbackQueryPayloadData({this.data});

  /// [data] Data that was attached to the callback button
  String data;

  /// Parse from a json
  CallbackQueryPayloadData.fromJson(Map<String, dynamic> json) {
    this.data = json['data'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "data": this.data,
    };
  }

  static const CONSTRUCTOR = 'callbackQueryPayloadData';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallbackQueryPayloadDataWithPassword extends CallbackQueryPayload {
  /// The payload for a callback button requiring password
  CallbackQueryPayloadDataWithPassword({this.password, this.data});

  /// [password] The password for the current user
  String password;

  /// [data] Data that was attached to the callback button
  String data;

  /// Parse from a json
  CallbackQueryPayloadDataWithPassword.fromJson(Map<String, dynamic> json) {
    this.password = json['password'];
    this.data = json['data'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "password": this.password,
      "data": this.data,
    };
  }

  static const CONSTRUCTOR = 'callbackQueryPayloadDataWithPassword';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallbackQueryPayloadGame extends CallbackQueryPayload {
  /// The payload for a game callback button
  CallbackQueryPayloadGame({this.gameShortName});

  /// [gameShortName] A short name of the game that was attached to the callback button
  String gameShortName;

  /// Parse from a json
  CallbackQueryPayloadGame.fromJson(Map<String, dynamic> json) {
    this.gameShortName = json['game_short_name'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "game_short_name": this.gameShortName,
    };
  }

  static const CONSTRUCTOR = 'callbackQueryPayloadGame';

  @override
  String getConstructor() => CONSTRUCTOR;
}
