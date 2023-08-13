part of '../tdapi.dart';

class SetChatBackground extends TdFunction {
  /// Changes the background in a specific chat. Supported only in private and secret chats with non-deleted users
  const SetChatBackground({
    required this.chatId,
    this.background,
    this.type,
    required this.darkThemeDimming,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [background] The input background to use; pass null to create a new filled background or to remove the current background
  final InputBackground? background;

  /// [type] Background type; pass null to remove the current background
  final BackgroundType? type;

  /// [darkThemeDimming] Dimming of the background in dark themes, as a percentage; 0-100
  final int darkThemeDimming;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": chatId,
      "background": background?.toJson(),
      "type": type?.toJson(),
      "dark_theme_dimming": darkThemeDimming,
      "@extra": extra,
    };
  }

  SetChatBackground copyWith({
    int? chatId,
    InputBackground? background,
    BackgroundType? type,
    int? darkThemeDimming,
  }) =>
      SetChatBackground(
        chatId: chatId ?? this.chatId,
        background: background ?? this.background,
        type: type ?? this.type,
        darkThemeDimming: darkThemeDimming ?? this.darkThemeDimming,
      );

  static const CONSTRUCTOR = 'setChatBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
}
