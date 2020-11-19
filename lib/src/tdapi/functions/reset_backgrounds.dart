part of '../tdapi.dart';

class ResetBackgrounds extends TdFunction {
  /// Resets list of installed backgrounds to its default value
  ResetBackgrounds();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ResetBackgrounds.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'resetBackgrounds';

  @override
  String getConstructor() => CONSTRUCTOR;
}
