part of '../tdapi.dart';

class GetCountries extends TdFunction {

  /// Returns information about existing countries. Can be called before authorization
  const GetCountries();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }
  
  GetCountries copyWith() => const GetCountries();

  static const CONSTRUCTOR = 'getCountries';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
