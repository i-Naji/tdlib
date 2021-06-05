part of '../tdapi.dart';

class ChatStatisticsMessageSenderInfo extends TdObject {
  /// Contains statistics about messages sent by a user
  ChatStatisticsMessageSenderInfo(
      {required this.userId,
      required this.sentMessageCount,
      required this.averageCharacterCount});

  /// [userId] User identifier
  int userId;

  /// [sentMessageCount] Number of sent messages
  int sentMessageCount;

  /// [averageCharacterCount] Average number of characters in sent messages
  int averageCharacterCount;

  /// Parse from a json
  factory ChatStatisticsMessageSenderInfo.fromJson(Map<String, dynamic> json) {
    return ChatStatisticsMessageSenderInfo(
      userId: json['user_id'],
      sentMessageCount: json['sent_message_count'],
      averageCharacterCount: json['average_character_count'],
    );
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
