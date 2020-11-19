part of '../tdapi.dart';

class Chats extends TdObject {
  /// Represents a list of chats
  Chats({this.totalCount, this.chatIds});

  /// [totalCount] Approximate total count of chats found
  int totalCount;

  /// [chatIds] List of chat identifiers
  List<int> chatIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  Chats.fromJson(Map<String, dynamic> json) {
    this.totalCount = json['total_count'];
    this.chatIds =
        List<int>.from((json['chat_ids'] ?? []).map((item) => item).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "chat_ids": this.chatIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'chats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
