part of '../tdapi.dart';

class ToggleChatDefaultDisableNotification extends TdFunction {

  /// Changes the value of the default disable_notification parameter, used when a message is sent to a chat
  const ToggleChatDefaultDisableNotification({
    required this.chatId,
    required this.defaultDisableNotification,
  });
  
  /// [chatId] Chat identifier 
  final int chatId;

  /// [defaultDisableNotification] New value of default_disable_notification
  final bool defaultDisableNotification;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "default_disable_notification": defaultDisableNotification,
      "@extra": extra,
    };
  }
  
  ToggleChatDefaultDisableNotification copyWith({
    int? chatId,
    bool? defaultDisableNotification,
  }) => ToggleChatDefaultDisableNotification(
    chatId: chatId ?? this.chatId,
    defaultDisableNotification: defaultDisableNotification ?? this.defaultDisableNotification,
  );

  static const CONSTRUCTOR = 'toggleChatDefaultDisableNotification';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
