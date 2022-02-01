part of '../tdapi.dart';

class GetSavedAnimations extends TdFunction {

  /// Returns saved animations
  const GetSavedAnimations();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetSavedAnimations copyWith() => const GetSavedAnimations();

  static const CONSTRUCTOR = 'getSavedAnimations';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
