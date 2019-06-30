part of '../tdapi.dart';

class Messages implements TLObject {
  int totalCount;
  List<Message> messages;
  dynamic extra;

  /// Contains a list of messages.
  ///[totalCount] Approximate total count of messages found .
  /// [messages] List of messages; messages may be null
  Messages({this.totalCount, this.messages});

  /// Parse from a json
  Messages.fromJson(Map<String, dynamic> json) {
    this.totalCount = json['total_count'];
    this.messages = (json['messages'] ?? [])
        .map((listValue) => Message.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'total_count': this.totalCount,
      'messages': this.messages.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'messages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
