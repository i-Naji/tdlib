part of '../tdapi.dart';

class SetVideoChatDefaultParticipant extends TdFunction {

  /// Changes default participant identifier, on whose behalf a video chat in the chat will be joined
  const SetVideoChatDefaultParticipant({
    required this.chatId,
    required this.defaultParticipantId,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [defaultParticipantId] Default group call participant identifier to join the video chats
  final MessageSender defaultParticipantId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "default_participant_id": defaultParticipantId.toJson(),
      "@extra": extra,
    };
  }
  
  SetVideoChatDefaultParticipant copyWith({
    int? chatId,
    MessageSender? defaultParticipantId,
  }) => SetVideoChatDefaultParticipant(
    chatId: chatId ?? this.chatId,
    defaultParticipantId: defaultParticipantId ?? this.defaultParticipantId,
  );

  static const CONSTRUCTOR = 'setVideoChatDefaultParticipant';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
