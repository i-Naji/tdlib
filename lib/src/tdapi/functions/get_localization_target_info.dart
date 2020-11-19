part of '../tdapi.dart';

class GetLocalizationTargetInfo extends TdFunction {
  /// Returns information about the current localization target. This is an offline request if only_local is true. Can be called before authorization
  GetLocalizationTargetInfo({this.onlyLocal});

  /// [onlyLocal] If true, returns only locally available information without sending network requests
  bool onlyLocal;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetLocalizationTargetInfo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "only_local": this.onlyLocal,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getLocalizationTargetInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
