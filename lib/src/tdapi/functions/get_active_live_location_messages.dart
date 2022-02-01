part of '../tdapi.dart';

class GetActiveLiveLocationMessages extends TdFunction {

  /// Returns all active live locations that need to be updated by the application. The list is persistent across application restarts only if the message database is used
  const GetActiveLiveLocationMessages();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetActiveLiveLocationMessages copyWith() => const GetActiveLiveLocationMessages();

  static const CONSTRUCTOR = 'getActiveLiveLocationMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
