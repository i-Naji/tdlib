part of '../tdapi.dart';

class GetTemporaryPasswordState extends TdFunction {
  dynamic extra;

  /// Returns information about the current temporary password
  GetTemporaryPasswordState();

  /// Parse from a json
  GetTemporaryPasswordState.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getTemporaryPasswordState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}