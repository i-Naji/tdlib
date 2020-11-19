part of '../tdapi.dart';

class GetContacts extends TdFunction {
  /// Returns all user contacts
  GetContacts();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetContacts.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
