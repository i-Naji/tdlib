part of '../tdapi.dart';

class ClearImportedContacts extends TdFunction {
  /// Clears all imported contacts, contact list remains unchanged
  ClearImportedContacts();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ClearImportedContacts.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'clearImportedContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
