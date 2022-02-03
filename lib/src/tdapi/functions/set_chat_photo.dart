part of '../tdapi.dart';

class SetChatPhoto extends TdFunction {

  /// Changes the photo of a chat. Supported only for basic groups, supergroups and channels. Requires can_change_info administrator right
  const SetChatPhoto({
    required this.chatId,
    this.photo,
  });
  
  /// [chatId] Chat identifier
  final int chatId;

  /// [photo] New chat photo; pass null to delete the chat photo
  final InputChatPhoto? photo;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "photo": photo?.toJson(),
      "@extra": extra,
    };
  }
  
  SetChatPhoto copyWith({
    int? chatId,
    InputChatPhoto? photo,
  }) => SetChatPhoto(
    chatId: chatId ?? this.chatId,
    photo: photo ?? this.photo,
  );

  static const CONSTRUCTOR = 'setChatPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
