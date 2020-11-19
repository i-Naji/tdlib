part of '../tdapi.dart';

class GetMe extends TdFunction {
  /// Returns the current user
  GetMe();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetMe.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMe';

  @override
  String getConstructor() => CONSTRUCTOR;
}
