part of '../tdapi.dart';

class ChatStatisticsMessageInteractionInfo extends TdObject {

  /// Contains statistics about interactions with a message
  const ChatStatisticsMessageInteractionInfo({
    required this.messageId,
    required this.viewCount,
    required this.forwardCount,
  });
  
  /// [messageId] Message identifier
  final int messageId;

  /// [viewCount] Number of times the message was viewed
  final int viewCount;

  /// [forwardCount] Number of times the message was forwarded
  final int forwardCount;
  
  /// Parse from a json
  factory ChatStatisticsMessageInteractionInfo.fromJson(Map<String, dynamic> json) => ChatStatisticsMessageInteractionInfo(
    messageId: json['message_id'],
    viewCount: json['view_count'],
    forwardCount: json['forward_count'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_id": messageId,
      "view_count": viewCount,
      "forward_count": forwardCount,
    };
  }
  
  ChatStatisticsMessageInteractionInfo copyWith({
    int? messageId,
    int? viewCount,
    int? forwardCount,
  }) => ChatStatisticsMessageInteractionInfo(
    messageId: messageId ?? this.messageId,
    viewCount: viewCount ?? this.viewCount,
    forwardCount: forwardCount ?? this.forwardCount,
  );

  static const CONSTRUCTOR = 'chatStatisticsMessageInteractionInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
