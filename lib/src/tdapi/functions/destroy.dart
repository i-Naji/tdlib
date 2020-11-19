part of '../tdapi.dart';

class Destroy extends TdFunction {
  /// Closes the TDLib instance, destroying all local data without a proper logout. The current user session will remain in the list of all active sessions. All local data will be destroyed. After the destruction completes updateAuthorizationState with authorizationStateClosed will be sent. Can be called before authorization
  Destroy();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  Destroy.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'destroy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
