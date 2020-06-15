part of '../tdapi.dart';

class ChangeImportedContacts extends TdFunction {
  List<Contact> contacts;
  dynamic extra;

  /// Changes imported contacts using the list of current user contacts saved on the device. Imports newly added contacts and, if at least the file database is enabled, deletes recently deleted contacts.. Query result depends on the result of the previous query, so only one query is possible at the same time. 
  /// [contacts] The new list of contacts, contact's vCard are ignored and are not imported
  ChangeImportedContacts({this.contacts});

  /// Parse from a json
  ChangeImportedContacts.fromJson(Map<String, dynamic> json) ;

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