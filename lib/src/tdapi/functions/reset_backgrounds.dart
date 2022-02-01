part of '../tdapi.dart';

class ResetBackgrounds extends TdFunction {

  /// Resets list of installed backgrounds to its default value
  const ResetBackgrounds();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  ResetBackgrounds copyWith() => const ResetBackgrounds();

  static const CONSTRUCTOR = 'resetBackgrounds';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
