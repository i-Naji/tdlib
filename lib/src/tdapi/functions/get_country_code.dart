part of '../tdapi.dart';

class GetCountryCode extends TdFunction {

  /// Uses the current IP address to find the current country. Returns two-letter ISO 3166-1 alpha-2 country code. Can be called before authorization
  const GetCountryCode();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetCountryCode copyWith() => const GetCountryCode();

  static const CONSTRUCTOR = 'getCountryCode';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
