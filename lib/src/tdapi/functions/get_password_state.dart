part of '../tdapi.dart';

class GetPasswordState extends TdFunction {
  /// Returns the current state of 2-step verification
  GetPasswordState();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetPasswordState.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPasswordState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
