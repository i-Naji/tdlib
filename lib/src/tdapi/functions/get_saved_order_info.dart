part of '../tdapi.dart';

class GetSavedOrderInfo extends TdFunction {
  /// Returns saved order info, if any
  GetSavedOrderInfo();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetSavedOrderInfo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getSavedOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
