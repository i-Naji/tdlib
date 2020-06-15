part of '../tdapi.dart';

class Contact extends TdObject {
  String phoneNumber;
  String firstName;
  String lastName;
  String vcard;
  int userId;

  /// Describes a user contact. 
  /// [phoneNumber] Phone number of the user . 
  /// [firstName] First name of the user; 1-255 characters in length . 
  /// [lastName] Last name of the user . 
  /// [vcard] Additional data about the user in a form of vCard; 0-2048 bytes in length . 
  /// [userId] Identifier of the user, if known; otherwise 0
  Contact({this.phoneNumber,
    this.firstName,
    this.lastName,
    this.vcard,
    this.userId});

  /// Parse from a json
  Contact.fromJson(Map<String, dynamic> json)  {
    this.phoneNumber = json['phone_number'];
    this.firstName = json['first_name'];
    this.lastName = json['last_name'];
    this.vcard = json['vcard'];
    this.userId = json['user_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": this.phoneNumber,
      "first_name": this.firstName,
      "last_name": this.lastName,
      "vcard": this.vcard,
      "user_id": this.userId,
    };
  }

  static const CONSTRUCTOR = 'contact';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}