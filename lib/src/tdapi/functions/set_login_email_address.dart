part of '../tdapi.dart';

class SetLoginEmailAddress extends TdFunction {
  /// Changes the login email address of the user. The email address can be changed only if the current user already has login email and passwordState.login_email_address_pattern is non-empty.. The change will not be applied until the new login email address is confirmed with checkLoginEmailAddressCode. To use Apple setLoginEmailAddress/Google setLoginEmailAddress instead of a email address, call checkLoginEmailAddressCode directly
  const SetLoginEmailAddress({
    required this.newLoginEmailAddress,
  });

  /// [newLoginEmailAddress] New login email address
  final String newLoginEmailAddress;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "new_login_email_address": newLoginEmailAddress,
      "@extra": extra,
    };
  }

  SetLoginEmailAddress copyWith({
    String? newLoginEmailAddress,
  }) =>
      SetLoginEmailAddress(
        newLoginEmailAddress: newLoginEmailAddress ?? this.newLoginEmailAddress,
      );

  static const CONSTRUCTOR = 'setLoginEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}
