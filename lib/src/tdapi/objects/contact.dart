part of '../tdapi.dart';

class Contact extends TdObject {

  /// Describes a user contact
  const Contact({
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    required this.vcard,
    required this.userId,
  });
  
  /// [phoneNumber] Phone number of the user 
  final String phoneNumber;

  /// [firstName] First name of the user; 1-255 characters in length 
  final String firstName;

  /// [lastName] Last name of the user 
  final String lastName;

  /// [vcard] Additional data about the user in a form of vCard; 0-2048 bytes in length 
  final String vcard;

  /// [userId] Identifier of the user, if known; otherwise 0
  final int userId;
  
  /// Parse from a json
  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
    phoneNumber: json['phone_number'],
    firstName: json['first_name'],
    lastName: json['last_name'],
    vcard: json['vcard'],
    userId: json['user_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": phoneNumber,
      "first_name": firstName,
      "last_name": lastName,
      "vcard": vcard,
      "user_id": userId,
    };
  }
  
  Contact copyWith({
    String? phoneNumber,
    String? firstName,
    String? lastName,
    String? vcard,
    int? userId,
  }) => Contact(
    phoneNumber: phoneNumber ?? this.phoneNumber,
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
    vcard: vcard ?? this.vcard,
    userId: userId ?? this.userId,
  );

  static const CONSTRUCTOR = 'contact';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
