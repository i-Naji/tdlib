part of '../tdapi.dart';

class Contact extends TdObject {
  /// Describes a user contact
  Contact(
      {this.phoneNumber,
      this.firstName,
      this.lastName,
      this.vcard,
      this.userId});

  /// [phoneNumber] Phone number of the user
  String phoneNumber;

  /// [firstName] First name of the user; 1-255 characters in length
  String firstName;

  /// [lastName] Last name of the user
  String lastName;

  /// [vcard] Additional data about the user in a form of vCard; 0-2048 bytes in length
  String vcard;

  /// [userId] Identifier of the user, if known; otherwise 0
  int userId;

  /// Parse from a json
  Contact.fromJson(Map<String, dynamic> json) {
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
