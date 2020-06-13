part of '../tdapi.dart';

class SetChatLocation extends TdFunction {
  int chatId;
  ChatLocation location;
  dynamic extra;

  /// Changes the location of a chat. Available only for some location-based supergroups, use supergroupFullInfo.can_set_location to check whether the method is allowed to use. 
  /// [chatId] Chat identifier . 
  /// [location] New location for the chat; must be valid and not null
  SetChatLocation({this.chatId,
    this.location});

  /// Parse from a json
  SetChatLocation.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "location": this.location.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatLocation';
}