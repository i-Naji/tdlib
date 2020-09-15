part of '../tdapi.dart';

class CallbackQueryPayload extends TdObject {

  /// Represents a payload of a callback query
  CallbackQueryPayload();

  

  /// a CallbackQueryPayload return type can be :
  /// * CallbackQueryPayloadData
  /// * CallbackQueryPayloadGame
  factory CallbackQueryPayload.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CallbackQueryPayloadData.CONSTRUCTOR:
        return CallbackQueryPayloadData.fromJson(json);
      case CallbackQueryPayloadGame.CONSTRUCTOR:
        return CallbackQueryPayloadGame.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'callbackQueryPayload';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallbackQueryPayloadData extends CallbackQueryPayload {

  /// The payload from a general callback button
  CallbackQueryPayloadData({this.data});

  /// [data] Data that was attached to the callback button
  String data;

  /// Parse from a json
  CallbackQueryPayloadData.fromJson(Map<String, dynamic> json)  {
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

class CallbackQueryPayloadGame extends CallbackQueryPayload {

  /// The payload from a game callback button
  CallbackQueryPayloadGame({this.gameShortName});

  /// [gameShortName] A short name of the game that was attached to the callback button
  String gameShortName;

  /// Parse from a json
  CallbackQueryPayloadGame.fromJson(Map<String, dynamic> json)  {
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