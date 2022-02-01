part of '../tdapi.dart';

class PhoneNumberInfo extends TdObject {

  /// Contains information about a phone number
  const PhoneNumberInfo({
    this.country,
    required this.countryCallingCode,
    required this.formattedPhoneNumber,
    this.extra,
    this.clientId,
  });
  
  /// [country] Information about the country to which the phone number belongs; may be null
  final CountryInfo? country;

  /// [countryCallingCode] The part of the phone number denoting country calling code or its part
  final String countryCallingCode;

  /// [formattedPhoneNumber] The phone number without country calling code formatted accordingly to local rules. Expected digits are returned as '-', but even more digits might be entered by the user
  final String formattedPhoneNumber;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PhoneNumberInfo.fromJson(Map<String, dynamic> json) => PhoneNumberInfo(
    country: json['country'] == null ? null : CountryInfo.fromJson(json['country']),
    countryCallingCode: json['country_calling_code'],
    formattedPhoneNumber: json['formatted_phone_number'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "country": country?.toJson(),
      "country_calling_code": countryCallingCode,
      "formatted_phone_number": formattedPhoneNumber,
    };
  }
  
  PhoneNumberInfo copyWith({
    CountryInfo? country,
    String? countryCallingCode,
    String? formattedPhoneNumber,
    dynamic extra,
    int? clientId,
  }) => PhoneNumberInfo(
    country: country ?? this.country,
    countryCallingCode: countryCallingCode ?? this.countryCallingCode,
    formattedPhoneNumber: formattedPhoneNumber ?? this.formattedPhoneNumber,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'phoneNumberInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
