part of '../tdapi.dart';

class BlockMessageSenderFromReplies extends TdFunction {

  /// Blocks an original sender of a message in the Replies chat
  const BlockMessageSenderFromReplies({
    required this.messageId,
    required this.deleteMessage,
    required this.deleteAllMessages,
    required this.reportSpam,
  });
  
  /// [messageId] The identifier of an incoming message in the Replies chat
  final int messageId;

  /// [deleteMessage] Pass true if the message must be deleted
  final bool deleteMessage;

  /// [deleteAllMessages] Pass true if all messages from the same sender must be deleted
  final bool deleteAllMessages;

  /// [reportSpam] Pass true if the sender must be reported to the Telegram moderators
  final bool reportSpam;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_id": messageId,
      "delete_message": deleteMessage,
      "delete_all_messages": deleteAllMessages,
      "report_spam": reportSpam,
      "@extra": extra,
    };
  }
  
  BlockMessageSenderFromReplies copyWith({
    int? messageId,
    bool? deleteMessage,
    bool? deleteAllMessages,
    bool? reportSpam,
  }) => BlockMessageSenderFromReplies(
    messageId: messageId ?? this.messageId,
    deleteMessage: deleteMessage ?? this.deleteMessage,
    deleteAllMessages: deleteAllMessages ?? this.deleteAllMessages,
    reportSpam: reportSpam ?? this.reportSpam,
  );

  static const CONSTRUCTOR = 'blockMessageSenderFromReplies';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
