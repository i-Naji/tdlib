part of '../tdapi.dart';

class ImportContacts extends TdFunction {
  List<List<Contact>> contacts;
  dynamic extra;

  /// Adds new contacts or edits existing contacts by their phone numbers; contacts' user identifiers are ignored. 
  /// [contacts] The list of contacts to import or edit; contacts' vCard are ignored and are not imported
  ImportContacts({this.contacts});

  /// Parse from a json
  ImportContacts.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "contacts": this.contacts.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'importContacts';
}