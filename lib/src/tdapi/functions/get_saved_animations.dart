part of '../tdapi.dart';

class GetSavedAnimations extends TdFunction {
  /// Returns saved animations
  GetSavedAnimations();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetSavedAnimations.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getSavedAnimations';

  @override
  String getConstructor() => CONSTRUCTOR;
}
