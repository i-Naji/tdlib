part of '../tdapi.dart';

class GetPreferredCountryLanguage extends TdFunction {

  /// Returns an IETF language tag of the language preferred in the country, which must be used to fill native fields in Telegram Passport personal details. Returns a 404 error if unknown
  const GetPreferredCountryLanguage({
    required this.countryCode,
  });
  
  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code
  final String countryCode;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "country_code": countryCode,
      "@extra": extra,
    };
  }
  
  GetPreferredCountryLanguage copyWith({
    String? countryCode,
  }) => GetPreferredCountryLanguage(
    countryCode: countryCode ?? this.countryCode,
  );

  static const CONSTRUCTOR = 'getPreferredCountryLanguage';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
