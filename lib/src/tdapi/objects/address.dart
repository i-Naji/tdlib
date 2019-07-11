part of '../tdapi.dart';

class Address implements TLObject {
  String countryCode;
  String state;
  String city;
  String streetLine1;
  String streetLine2;
  String postalCode;

  /// Describes an address.
  ///[countryCode] A two-letter ISO 3166-1 alpha-2 country code .
  /// [state] State, if applicable .
  /// [city] City .
  /// [streetLine1] First line of the address .
  /// [streetLine2] Second line of the address .
  /// [postalCode] Address postal code
  Address(
      {this.countryCode,
      this.state,
      this.city,
      this.streetLine1,
      this.streetLine2,
      this.postalCode});

  /// Parse from a json
  Address.fromJson(Map<String, dynamic> json) {
    this.countryCode = json['country_code'];
    this.state = json['state'];
    this.city = json['city'];
    this.streetLine1 = json['street_line1'];
    this.streetLine2 = json['street_line2'];
    this.postalCode = json['postal_code'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "country_code": this.countryCode,
      "state": this.state,
      "city": this.city,
      "street_line1": this.streetLine1,
      "street_line2": this.streetLine2,
      "postal_code": this.postalCode
    };
  }

  static const String CONSTRUCTOR = "address";

  @override
  String getConstructor() => CONSTRUCTOR;
}
