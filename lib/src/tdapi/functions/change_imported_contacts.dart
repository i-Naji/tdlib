part of '../tdapi.dart';

class ChangeImportedContacts extends TdFunction {
  /// Changes imported contacts using the list of contacts saved on the device. Imports newly added contacts and, if at least the file database is enabled, deletes recently deleted contacts.. Query result depends on the result of the previous query, so only one query is possible at the same time
  ChangeImportedContacts({this.contacts});

  /// [contacts] The new list of contacts, contact's vCard are ignored and are not imported
  List<Contact> contacts;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ChangeImportedContacts.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "contacts": this.contacts.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'changeImportedContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
