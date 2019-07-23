part of '../tdapi.dart';

class ClearImportedContacts extends TdFunction {
  dynamic extra;

  /// Clears all imported contacts, contact list remains unchanged.
  ///
  ClearImportedContacts();

  /// Parse from a json
  ClearImportedContacts.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "clearImportedContacts";

  @override
  String getConstructor() => CONSTRUCTOR;
}
