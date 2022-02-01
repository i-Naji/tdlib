part of '../tdapi.dart';

class CreateVideoChat extends TdFunction {

  /// Creates a video chat (a group call bound to a chat). Available only for basic groups, supergroups and channels; requires can_manage_video_chats rights
  const CreateVideoChat({
    required this.chatId,
    required this.title,
    required this.startDate,
  });
  
  /// [chatId] Chat identifier, in which the video chat will be created
  final int chatId;

  /// [title] Group call title; if empty, chat title will be used
  final String title;

  /// [startDate] Point in time (Unix timestamp) when the group call is supposed to be started by an administrator; 0 to start the video chat immediately. The date must be at least 10 seconds and at most 8 days in the future
  final int startDate;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "title": title,
      "start_date": startDate,
      "@extra": extra,
    };
  }
  
  CreateVideoChat copyWith({
    int? chatId,
    String? title,
    int? startDate,
  }) => CreateVideoChat(
    chatId: chatId ?? this.chatId,
    title: title ?? this.title,
    startDate: startDate ?? this.startDate,
  );

  static const CONSTRUCTOR = 'createVideoChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
