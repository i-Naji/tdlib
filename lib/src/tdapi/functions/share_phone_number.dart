part of '../tdapi.dart';

class SharePhoneNumber extends TdFunction {
  int userId;
  dynamic extra;

  /// Shares the phone number of the current user with a mutual contact. Supposed to be called when the user clicks on chatActionBarSharePhoneNumber. 
  /// [userId] Identifier of the user with whom to share the phone number. The user must be a mutual contact
  SharePhoneNumber({this.userId});

  /// Parse from a json
  SharePhoneNumber.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sharePhoneNumber';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}