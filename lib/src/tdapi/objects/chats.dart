part of '../tdapi.dart';

class Chats implements TLObject {
  List<int> chatIds;
  dynamic extra;

  /// Represents a list of chats.
  ///[chatIds] List of chat identifiers
  Chats({this.chatIds});

  /// Parse from a json
  Chats.fromJson(Map<String, dynamic> json) {
    this.chatIds = json['chat_ids'] ?? [];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'chat_ids': this.chatIds};
  }

  static const String CONSTRUCTOR = 'chats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
