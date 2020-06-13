part of '../tdapi.dart';

class GetSavedOrderInfo extends TdFunction {
  dynamic extra;

  /// Returns saved order info, if any
  GetSavedOrderInfo();

  /// Parse from a json
  GetSavedOrderInfo.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getSavedOrderInfo';
}