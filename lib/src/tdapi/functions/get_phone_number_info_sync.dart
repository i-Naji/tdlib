part of '../tdapi.dart';

class GetPhoneNumberInfoSync extends TdFunction {

  /// Returns information about a phone number by its prefix synchronously. getCountries must be called at least once after changing localization to the specified language if properly localized country information is expected. Can be called synchronously
  const GetPhoneNumberInfoSync({
    required this.languageCode,
    required this.phoneNumberPrefix,
  });
  
  /// [languageCode] A two-letter ISO 639-1 country code for country information localization
  final String languageCode;

  /// [phoneNumberPrefix] The phone number prefix
  final String phoneNumberPrefix;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "language_code": languageCode,
      "phone_number_prefix": phoneNumberPrefix,
      "@extra": extra,
    };
  }
  
  GetPhoneNumberInfoSync copyWith({
    String? languageCode,
    String? phoneNumberPrefix,
  }) => GetPhoneNumberInfoSync(
    languageCode: languageCode ?? this.languageCode,
    phoneNumberPrefix: phoneNumberPrefix ?? this.phoneNumberPrefix,
  );

  static const CONSTRUCTOR = 'getPhoneNumberInfoSync';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
