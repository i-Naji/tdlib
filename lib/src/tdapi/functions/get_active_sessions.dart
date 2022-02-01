part of '../tdapi.dart';

class GetActiveSessions extends TdFunction {

  /// Returns all active sessions of the current user
  const GetActiveSessions();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetActiveSessions copyWith() => const GetActiveSessions();

  static const CONSTRUCTOR = 'getActiveSessions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
