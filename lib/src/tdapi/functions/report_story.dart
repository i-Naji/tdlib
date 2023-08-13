part of '../tdapi.dart';

class ReportStory extends TdFunction {
  /// Reports a story to the Telegram moderators
  const ReportStory({
    required this.storySenderChatId,
    required this.storyId,
    required this.reason,
    required this.text,
  });

  /// [storySenderChatId] The identifier of the sender of the story to report
  final int storySenderChatId;

  /// [storyId] The identifier of the story to report
  final int storyId;

  /// [reason] The reason for reporting the story
  final ReportReason reason;

  /// [text] Additional report details; 0-1024 characters
  final String text;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "story_sender_chat_id": storySenderChatId,
      "story_id": storyId,
      "reason": reason.toJson(),
      "text": text,
      "@extra": extra,
    };
  }

  ReportStory copyWith({
    int? storySenderChatId,
    int? storyId,
    ReportReason? reason,
    String? text,
  }) =>
      ReportStory(
        storySenderChatId: storySenderChatId ?? this.storySenderChatId,
        storyId: storyId ?? this.storyId,
        reason: reason ?? this.reason,
        text: text ?? this.text,
      );

  static const CONSTRUCTOR = 'reportStory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
