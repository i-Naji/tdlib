part of '../tdapi.dart';

class GetContacts extends TdFunction {
  /// Returns all contacts of the user
  const GetContacts();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetContacts copyWith() => const GetContacts();

  static const CONSTRUCTOR = 'getContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
