part of '../tdapi.dart';

class GetPreferredCountryLanguage extends TdFunction {
  /// Returns an IETF language tag of the language preferred in the country, which should be used to fill native fields in Telegram Passport personal details. Returns a 404 error if unknown
  GetPreferredCountryLanguage({this.countryCode});

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code
  String countryCode;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetPreferredCountryLanguage.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "country_code": this.countryCode,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPreferredCountryLanguage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
