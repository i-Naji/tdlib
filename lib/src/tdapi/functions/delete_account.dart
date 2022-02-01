part of '../tdapi.dart';

class DeleteAccount extends TdFunction {

  /// Deletes the account of the current user, deleting all information associated with the user from the server. The phone number of the account can be used to create a new account. Can be called before authorization when the current authorization state is authorizationStateWaitPassword
  const DeleteAccount({
    required this.reason,
  });
  
  /// [reason] The reason why the account was deleted; optional
  final String reason;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reason": reason,
      "@extra": extra,
    };
  }
  
  DeleteAccount copyWith({
    String? reason,
  }) => DeleteAccount(
    reason: reason ?? this.reason,
  );

  static const CONSTRUCTOR = 'deleteAccount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
