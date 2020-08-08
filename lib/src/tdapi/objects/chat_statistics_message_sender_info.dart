part of '../tdapi.dart';

class ChatStatisticsMessageSenderInfo extends TdObject {
  int userId;
  int sentMessageCount;
  int averageCharacterCount;

  /// Contains statistics about messages sent by a user. 
  /// [userId] User identifier. 
  /// [sentMessageCount] Number of sent messages. 
  /// [averageCharacterCount] Average number of characters in sent messages
  ChatStatisticsMessageSenderInfo({this.userId,
    this.sentMessageCount,
    this.averageCharacterCount});

  /// Parse from a json
  ChatStatisticsMessageSenderInfo.fromJson(Map<String, dynamic> json)  {
    this.userId = json['user_id'];
    this.sentMessageCount = json['sent_message_count'];
    this.averageCharacterCount = json['average_character_count'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "sent_message_count": this.sentMessageCount,
      "average_character_count": this.averageCharacterCount,
    };
  }

  static const CONSTRUCTOR = 'chatStatisticsMessageSenderInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}