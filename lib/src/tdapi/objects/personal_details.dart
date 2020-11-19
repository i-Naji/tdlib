part of '../tdapi.dart';

class PersonalDetails extends TdObject {
  /// Contains the user's personal details
  PersonalDetails(
      {this.firstName,
      this.middleName,
      this.lastName,
      this.nativeFirstName,
      this.nativeMiddleName,
      this.nativeLastName,
      this.birthdate,
      this.gender,
      this.countryCode,
      this.residenceCountryCode});

  /// [firstName] First name of the user written in English; 1-255 characters
  String firstName;

  /// [middleName] Middle name of the user written in English; 0-255 characters
  String middleName;

  /// [lastName] Last name of the user written in English; 1-255 characters
  String lastName;

  /// [nativeFirstName] Native first name of the user; 1-255 characters
  String nativeFirstName;

  /// [nativeMiddleName] Native middle name of the user; 0-255 characters
  String nativeMiddleName;

  /// [nativeLastName] Native last name of the user; 1-255 characters
  String nativeLastName;

  /// [birthdate] Birthdate of the user
  Date birthdate;

  /// [gender] Gender of the user, "male" or "female"
  String gender;

  /// [countryCode] A two-letter ISO 3166-1 alpha-2 country code of the user's country
  String countryCode;

  /// [residenceCountryCode] A two-letter ISO 3166-1 alpha-2 country code of the user's residence country
  String residenceCountryCode;

  /// Parse from a json
  PersonalDetails.fromJson(Map<String, dynamic> json) {
    this.firstName = json['first_name'];
    this.middleName = json['middle_name'];
    this.lastName = json['last_name'];
    this.nativeFirstName = json['native_first_name'];
    this.nativeMiddleName = json['native_middle_name'];
    this.nativeLastName = json['native_last_name'];
    this.birthdate = Date.fromJson(json['birthdate'] ?? <String, dynamic>{});
    this.gender = json['gender'];
    this.countryCode = json['country_code'];
    this.residenceCountryCode = json['residence_country_code'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "first_name": this.firstName,
      "middle_name": this.middleName,
      "last_name": this.lastName,
      "native_first_name": this.nativeFirstName,
      "native_middle_name": this.nativeMiddleName,
      "native_last_name": this.nativeLastName,
      "birthdate": this.birthdate == null ? null : this.birthdate.toJson(),
      "gender": this.gender,
      "country_code": this.countryCode,
      "residence_country_code": this.residenceCountryCode,
    };
  }

  static const CONSTRUCTOR = 'personalDetails';

  @override
  String getConstructor() => CONSTRUCTOR;
}
