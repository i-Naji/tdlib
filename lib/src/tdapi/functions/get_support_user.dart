part of '../tdapi.dart';

class GetSupportUser extends TdFunction {

  /// Returns a user that can be contacted to get support
  const GetSupportUser();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetSupportUser copyWith() => const GetSupportUser();

  static const CONSTRUCTOR = 'getSupportUser';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
