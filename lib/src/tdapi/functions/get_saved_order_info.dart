part of '../tdapi.dart';

class GetSavedOrderInfo extends TdFunction {
  /// Returns saved order information. Returns a 404 error if there is no saved order information
  const GetSavedOrderInfo();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetSavedOrderInfo copyWith() => const GetSavedOrderInfo();

  static const CONSTRUCTOR = 'getSavedOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
