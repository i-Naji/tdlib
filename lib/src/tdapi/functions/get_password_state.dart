part of '../tdapi.dart';

class GetPasswordState extends TdFunction {

  /// Returns the current state of 2-step verification
  const GetPasswordState();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetPasswordState copyWith() => const GetPasswordState();

  static const CONSTRUCTOR = 'getPasswordState';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
