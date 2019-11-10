part of '../tdapi.dart';

class User implements TdObject {
  int id;
  String firstName;
  String lastName;
  String username;
  String phoneNumber;
  var status;
  ProfilePhoto profilePhoto;
  var outgoingLink;
  var incomingLink;
  bool isVerified;
  bool isSupport;
  String restrictionReason;
  bool isScam;
  bool haveAccess;
  var type;
  String languageCode;
  dynamic extra;

  /// Represents a user.
  ///[id] User identifier .
  /// [firstName] First name of the user .
  /// [lastName] Last name of the user .
  /// [username] Username of the user.
  /// [phoneNumber] Phone number of the user .
  /// [status] Current online status of the user .
  /// [profilePhoto] Profile photo of the user; may be null.
  /// [outgoingLink] Relationship from the current user to the other user .
  /// [incomingLink] Relationship from the other user to the current user.
  /// [isVerified] True, if the user is verified .
  /// [isSupport] True, if the user is Telegram support account.
  /// [restrictionReason] If non-empty, it contains the reason why access to this user must be restricted. The format of the string is ".
  /// [isScam] True, if many users reported this user as a scam.
  /// [haveAccess] If false, the user is inaccessible, and the only information known about the user is inside this class. It can't be passed to any method except GetUser .
  /// [type] Type of the user .
  /// [languageCode] IETF language tag of the user's language; only available to bots
  User(
      {this.id,
      this.firstName,
      this.lastName,
      this.username,
      this.phoneNumber,
      this.status,
      this.profilePhoto,
      this.outgoingLink,
      this.incomingLink,
      this.isVerified,
      this.isSupport,
      this.restrictionReason,
      this.isScam,
      this.haveAccess,
      this.type,
      this.languageCode});

  /// Parse from a json
  User.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.firstName = json['first_name'];
    this.lastName = json['last_name'];
    this.username = json['username'];
    this.phoneNumber = json['phone_number'];
    this.status = UserStatus.fromJson(json['status'] ?? <String, dynamic>{});
    this.profilePhoto =
        ProfilePhoto.fromJson(json['profile_photo'] ?? <String, dynamic>{});
    this.outgoingLink =
        LinkState.fromJson(json['outgoing_link'] ?? <String, dynamic>{});
    this.incomingLink =
        LinkState.fromJson(json['incoming_link'] ?? <String, dynamic>{});
    this.isVerified = json['is_verified'];
    this.isSupport = json['is_support'];
    this.restrictionReason = json['restriction_reason'];
    this.isScam = json['is_scam'];
    this.haveAccess = json['have_access'];
    this.type = UserType.fromJson(json['type'] ?? <String, dynamic>{});
    this.languageCode = json['language_code'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "first_name": this.firstName,
      "last_name": this.lastName,
      "username": this.username,
      "phone_number": this.phoneNumber,
      "status": this.status.toJson(),
      "profile_photo": this.profilePhoto.toJson(),
      "outgoing_link": this.outgoingLink.toJson(),
      "incoming_link": this.incomingLink.toJson(),
      "is_verified": this.isVerified,
      "is_support": this.isSupport,
      "restriction_reason": this.restrictionReason,
      "is_scam": this.isScam,
      "have_access": this.haveAccess,
      "type": this.type.toJson(),
      "language_code": this.languageCode
    };
  }

  static const String CONSTRUCTOR = "user";

  @override
  String getConstructor() => CONSTRUCTOR;
}
