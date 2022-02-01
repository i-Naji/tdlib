part of '../tdapi.dart';

class GetSavedOrderInfo extends TdFunction {

  /// Returns saved order info, if any
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
