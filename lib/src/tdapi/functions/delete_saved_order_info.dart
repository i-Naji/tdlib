part of '../tdapi.dart';

class DeleteSavedOrderInfo extends TdFunction {
  /// Deletes saved order info
  DeleteSavedOrderInfo();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  DeleteSavedOrderInfo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'deleteSavedOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
