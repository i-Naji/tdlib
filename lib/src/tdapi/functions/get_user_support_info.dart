part of '../tdapi.dart';

class GetUserSupportInfo extends TdFunction {
  /// Returns support information for the given user; for Telegram support only
  const GetUserSupportInfo({
    required this.userId,
  });

  /// [userId] User identifier
  final int userId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "@extra": extra,
    };
  }

  GetUserSupportInfo copyWith({
    int? userId,
  }) =>
      GetUserSupportInfo(
        userId: userId ?? this.userId,
      );

  static const CONSTRUCTOR = 'getUserSupportInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
