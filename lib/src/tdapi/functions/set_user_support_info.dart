part of '../tdapi.dart';

class SetUserSupportInfo extends TdFunction {
  /// Sets support information for the given user; for Telegram support only
  const SetUserSupportInfo({
    required this.userId,
    required this.message,
  });

  /// [userId] User identifier
  final int userId;

  /// [message] New information message
  final FormattedText message;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "message": message.toJson(),
      "@extra": extra,
    };
  }

  SetUserSupportInfo copyWith({
    int? userId,
    FormattedText? message,
  }) =>
      SetUserSupportInfo(
        userId: userId ?? this.userId,
        message: message ?? this.message,
      );

  static const CONSTRUCTOR = 'setUserSupportInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
