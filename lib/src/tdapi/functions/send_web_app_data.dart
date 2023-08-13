part of '../tdapi.dart';

class SendWebAppData extends TdFunction {
  /// Sends data received from a keyboardButtonTypeWebApp Web App to a bot
  const SendWebAppData({
    required this.botUserId,
    required this.buttonText,
    required this.data,
  });

  /// [botUserId] Identifier of the target bot
  final int botUserId;

  /// [buttonText] Text of the keyboardButtonTypeWebApp button, which opened the Web App
  final String buttonText;

  /// [data] The data
  final String data;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "button_text": buttonText,
      "data": data,
      "@extra": extra,
    };
  }

  SendWebAppData copyWith({
    int? botUserId,
    String? buttonText,
    String? data,
  }) =>
      SendWebAppData(
        botUserId: botUserId ?? this.botUserId,
        buttonText: buttonText ?? this.buttonText,
        data: data ?? this.data,
      );

  static const CONSTRUCTOR = 'sendWebAppData';

  @override
  String getConstructor() => CONSTRUCTOR;
}
