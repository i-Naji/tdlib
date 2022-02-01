part of '../tdapi.dart';

class DeleteSavedCredentials extends TdFunction {

  /// Deletes saved credentials for all payment provider bots
  const DeleteSavedCredentials();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  DeleteSavedCredentials copyWith() => const DeleteSavedCredentials();

  static const CONSTRUCTOR = 'deleteSavedCredentials';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
