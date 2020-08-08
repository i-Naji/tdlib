part of '../tdapi.dart';

class ChatStatisticsMessageInteractionInfo extends TdObject {
  int messageId;
  int viewCount;
  int forwardCount;

  /// Contains statistics about interactions with a message. 
  /// [messageId] Message identifier. 
  /// [viewCount] Number of times the message was viewed. 
  /// [forwardCount] Number of times the message was forwarded
  ChatStatisticsMessageInteractionInfo({this.messageId,
    this.viewCount,
    this.forwardCount});

  /// Parse from a json
  ChatStatisticsMessageInteractionInfo.fromJson(Map<String, dynamic> json)  {
    this.messageId = json['message_id'];
    this.viewCount = json['view_count'];
    this.forwardCount = json['forward_count'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message_id": this.messageId,
      "view_count": this.viewCount,
      "forward_count": this.forwardCount,
    };
  }

  static const CONSTRUCTOR = 'chatStatisticsMessageInteractionInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}