part of '../tdapi.dart';

class Messages extends TdObject {

  /// Contains a list of messages
  const Messages({
    required this.totalCount,
    required this.messages,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] Approximate total count of messages found 
  final int totalCount;

  /// [messages] List of messages; messages may be null
  final List<Message> messages;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Messages.fromJson(Map<String, dynamic> json) => Messages(
    totalCount: json['total_count'],
    messages: List<Message>.from((json['messages'] ?? []).map((item) => Message.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "messages": messages.map((i) => i.toJson()).toList(),
    };
  }
  
  Messages copyWith({
    int? totalCount,
    List<Message>? messages,
    dynamic extra,
    int? clientId,
  }) => Messages(
    totalCount: totalCount ?? this.totalCount,
    messages: messages ?? this.messages,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'messages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
