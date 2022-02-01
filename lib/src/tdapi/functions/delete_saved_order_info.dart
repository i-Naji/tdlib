part of '../tdapi.dart';

class DeleteSavedOrderInfo extends TdFunction {

  /// Deletes saved order info
  const DeleteSavedOrderInfo();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  DeleteSavedOrderInfo copyWith() => const DeleteSavedOrderInfo();

  static const CONSTRUCTOR = 'deleteSavedOrderInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
