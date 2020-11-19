part of '../tdapi.dart';

class GetTemporaryPasswordState extends TdFunction {
  /// Returns information about the current temporary password
  GetTemporaryPasswordState();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetTemporaryPasswordState.fromJson(Map<String, dynamic> json);

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
