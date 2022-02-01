part of '../tdapi.dart';

class LogOut extends TdFunction {

  /// Closes the TDLib instance after a proper logout. Requires an available network connection. All local data will be destroyed. After the logout completes, updateAuthorizationState with authorizationStateClosed will be sent
  const LogOut();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  LogOut copyWith() => const LogOut();

  static const CONSTRUCTOR = 'logOut';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
