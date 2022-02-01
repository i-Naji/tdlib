part of '../tdapi.dart';

class Address extends TdObject {

  /// Describes an address
  const Address({
    required this.countryCode,
    required this.state,
    required this.city,
    required this.streetLine1,
    required this.streetLine2,
    required this.postalCode,
  });
  
  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code 
  final String countryCode;

  /// [state] State, if applicable 
  final String state;

  /// [city] City 
  final String city;

  /// [streetLine1] First line of the address 
  final String streetLine1;

  /// [streetLine2] Second line of the address 
  final String streetLine2;

  /// [postalCode] Address postal code
  final String postalCode;
  
  /// Parse from a json
  factory Address.fromJson(Map<String, dynamic> json) => Address(
    countryCode: json['country_code'],
    state: json['state'],
    city: json['city'],
    streetLine1: json['street_line1'],
    streetLine2: json['street_line2'],
    postalCode: json['postal_code'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "country_code": countryCode,
      "state": state,
      "city": city,
      "street_line1": streetLine1,
      "street_line2": streetLine2,
      "postal_code": postalCode,
    };
  }
  
  Address copyWith({
    String? countryCode,
    String? state,
    String? city,
    String? streetLine1,
    String? streetLine2,
    String? postalCode,
  }) => Address(
    countryCode: countryCode ?? this.countryCode,
    state: state ?? this.state,
    city: city ?? this.city,
    streetLine1: streetLine1 ?? this.streetLine1,
    streetLine2: streetLine2 ?? this.streetLine2,
    postalCode: postalCode ?? this.postalCode,
  );

  static const CONSTRUCTOR = 'address';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
