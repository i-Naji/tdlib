part of '../tdapi.dart';

class ChangeImportedContacts extends TdFunction {

  /// Changes imported contacts using the list of contacts saved on the device. Imports newly added contacts and, if at least the file database is enabled, deletes recently deleted contacts.. Query result depends on the result of the previous query, so only one query is possible at the same time
  const ChangeImportedContacts({
    required this.contacts,
  });
  
  /// [contacts] The new list of contacts, contact's vCard are ignored and are not imported
  final List<Contact> contacts;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "contacts": contacts.map((i) => i.toJson()).toList(),
      "@extra": extra,
    };
  }
  
  ChangeImportedContacts copyWith({
    List<Contact>? contacts,
  }) => ChangeImportedContacts(
    contacts: contacts ?? this.contacts,
  );

  static const CONSTRUCTOR = 'changeImportedContacts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
