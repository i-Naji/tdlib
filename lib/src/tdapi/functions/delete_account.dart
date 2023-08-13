part of '../tdapi.dart';

class DeleteAccount extends TdFunction {
  /// Deletes the account of the current user, deleting all information associated with the user from the server. The phone number of the account can be used to create a new account.. Can be called before authorization when the current authorization state is authorizationStateWaitPassword
  const DeleteAccount({
    required this.reason,
    required this.password,
  });

  /// [reason] The reason why the account was deleted; optional
  final String reason;

  /// [password] The 2-step verification password of the current user. If not specified, account deletion can be canceled within one week
  final String password;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reason": reason,
      "password": password,
      "@extra": extra,
    };
  }

  DeleteAccount copyWith({
    String? reason,
    String? password,
  }) =>
      DeleteAccount(
        reason: reason ?? this.reason,
        password: password ?? this.password,
      );

  static const CONSTRUCTOR = 'deleteAccount';

  @override
  String getConstructor() => CONSTRUCTOR;
}
