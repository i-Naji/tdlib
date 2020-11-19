part of '../tdapi.dart';

class PhoneNumberInfo extends TdObject {
  /// Contains information about a phone number
  PhoneNumberInfo(
      {this.country, this.countryCallingCode, this.formattedPhoneNumber});

  /// [country] Information about the country to which the phone number belongs; may be null
  CountryInfo country;

  /// [countryCallingCode] The part of the phone number denoting country calling code or its part
  String countryCallingCode;

  /// [formattedPhoneNumber] The phone number without country calling code formatted accordingly to local rules
  String formattedPhoneNumber;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PhoneNumberInfo.fromJson(Map<String, dynamic> json) {
    this.country = CountryInfo.fromJson(json['country'] ?? <String, dynamic>{});
    this.countryCallingCode = json['country_calling_code'];
    this.formattedPhoneNumber = json['formatted_phone_number'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "country": this.country == null ? null : this.country.toJson(),
      "country_calling_code": this.countryCallingCode,
      "formatted_phone_number": this.formattedPhoneNumber,
    };
  }

  static const CONSTRUCTOR = 'phoneNumberInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
