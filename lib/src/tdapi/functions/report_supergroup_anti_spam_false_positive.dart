part of '../tdapi.dart';

class ReportSupergroupAntiSpamFalsePositive extends TdFunction {
  /// Reports a false deletion of a message by aggressive anti-spam checks; requires administrator rights in the supergroup. Can be called only for messages from chatEventMessageDeleted with can_report_anti_spam_false_positive == true
  const ReportSupergroupAntiSpamFalsePositive({
    required this.supergroupId,
    required this.messageId,
  });

  /// [supergroupId] Supergroup identifier
  final int supergroupId;

  /// [messageId] Identifier of the erroneously deleted message
  final int messageId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "message_id": messageId,
      "@extra": extra,
    };
  }

  ReportSupergroupAntiSpamFalsePositive copyWith({
    int? supergroupId,
    int? messageId,
  }) =>
      ReportSupergroupAntiSpamFalsePositive(
        supergroupId: supergroupId ?? this.supergroupId,
        messageId: messageId ?? this.messageId,
      );

  static const CONSTRUCTOR = 'reportSupergroupAntiSpamFalsePositive';

  @override
  String getConstructor() => CONSTRUCTOR;
}
