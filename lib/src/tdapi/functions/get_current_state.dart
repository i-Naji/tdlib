part of '../tdapi.dart';

class GetCurrentState extends TdFunction {
  dynamic extra;

  /// Returns all updates needed to restore current TDLib state, i.e. all actual UpdateAuthorizationState/UpdateUser/UpdateNewChat and others. This is especially useful if TDLib is run in a separate process. This is an offline method. Can be called before authorization
  GetCurrentState();

  /// Parse from a json
  GetCurrentState.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getCurrentState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}