part of '../tdapi.dart';

class Messages extends TdObject {
  int totalCount;
  List<List<Message>> messages;
  dynamic extra;

  /// Contains a list of messages. 
  /// [totalCount] Approximate total count of messages found . 
  /// [messages] List of messages; messages may be null
  Messages({this.totalCount,
    this.messages});

  /// Parse from a json
  Messages.fromJson(Map<String, dynamic> json)  {
    this.totalCount = json['total_count'];
    this.messages = List<List<Message>>.from((json['messages'] ?? []).map((item) => List<Message>.from((item ?? []).map((innerItem) => Message.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "messages": this.messages.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'messages';
}