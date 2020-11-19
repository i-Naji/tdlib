part of '../tdapi.dart';

class MessageSenders extends TdObject {
  /// Represents a list of message senders
  MessageSenders({this.totalCount, this.senders});

  /// [totalCount] Approximate total count of messages senders found
  int totalCount;

  /// [senders] List of message senders
  List<MessageSender> senders;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  MessageSenders.fromJson(Map<String, dynamic> json) {
    this.totalCount = json['total_count'];
    this.senders = List<MessageSender>.from((json['senders'] ?? [])
        .map((item) => MessageSender.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "senders": this.senders.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'messageSenders';

  @override
  String getConstructor() => CONSTRUCTOR;
}
