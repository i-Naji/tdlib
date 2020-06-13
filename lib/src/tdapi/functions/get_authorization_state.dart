part of '../tdapi.dart';

class GetAuthorizationState extends TdFunction {
  dynamic extra;

  /// Returns the current authorization state; this is an offline request. For informational purposes only. Use updateAuthorizationState instead to maintain the current authorization state
  GetAuthorizationState();

  /// Parse from a json
  GetAuthorizationState.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getAuthorizationState';
}