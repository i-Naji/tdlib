part of '../tdapi.dart';

class GetSavedOrderInfo extends TLFunction {
  dynamic extra;

  /// Returns saved order info, if any.
  ///
  GetSavedOrderInfo();

  /// Parse from a json
  GetSavedOrderInfo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "getSavedOrderInfo";

  @override
  String getConstructor() => CONSTRUCTOR;
}
