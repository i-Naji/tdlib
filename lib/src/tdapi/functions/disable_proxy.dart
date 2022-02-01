part of '../tdapi.dart';

class DisableProxy extends TdFunction {

  /// Disables the currently enabled proxy. Can be called before authorization
  const DisableProxy();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  DisableProxy copyWith() => const DisableProxy();

  static const CONSTRUCTOR = 'disableProxy';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
