part of '../tdapi.dart';

class ChatStatisticsMessageSenderInfo extends TdObject {
  /// Contains statistics about messages sent by a user
  ChatStatisticsMessageSenderInfo(
      {this.userId, this.sentMessageCount, this.averageCharacterCount});

  /// [userId] User identifier
  int userId;

  /// [sentMessageCount] Number of sent messages
  int sentMessageCount;

  /// [averageCharacterCount] Average number of characters in sent messages
  int averageCharacterCount;

  /// Parse from a json
  ChatStatisticsMessageSenderInfo.fromJson(Map<String, dynamic> json) {
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
