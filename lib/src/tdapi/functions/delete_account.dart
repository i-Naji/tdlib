part of '../tdapi.dart';

class DeleteAccount extends TdFunction {
  /// Deletes the account of the current user, deleting all information associated with the user from the server. The phone number of the account can be used to create a new account. Can be called before authorization when the current authorization state is authorizationStateWaitPassword
  DeleteAccount({this.reason});

  /// [reason] The reason why the account was deleted; optional
  String reason;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  DeleteAccount.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "reason": this.reason,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'deleteAccount';

  @override
  String getConstructor() => CONSTRUCTOR;
}
