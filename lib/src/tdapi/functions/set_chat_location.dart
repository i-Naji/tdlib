part of '../tdapi.dart';

class SetChatLocation extends TdFunction {
  /// Changes the location of a chat. Available only for some location-based supergroups, use supergroupFullInfo.can_set_location to check whether the method is allowed to use
  SetChatLocation({this.chatId, this.location});

  /// [chatId] Chat identifier
  int chatId;

  /// [location] New location for the chat; must be valid and not null
  ChatLocation location;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetChatLocation.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "location": this.location == null ? null : this.location.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
