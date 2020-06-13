part of '../tdapi.dart';

class ImportedContacts extends TdObject {
  List<List<int>> userIds;
  List<List<int>> importerCount;
  dynamic extra;

  /// Represents the result of an ImportContacts request. 
  /// [userIds] User identifiers of the imported contacts in the same order as they were specified in the request; 0 if the contact is not yet a registered user. 
  /// [importerCount] The number of users that imported the corresponding contact; 0 for already registered users or if unavailable
  ImportedContacts({this.userIds,
    this.importerCount});

  /// Parse from a json
  ImportedContacts.fromJson(Map<String, dynamic> json)  {
    this.userIds = List<List<int>>.from((json['user_ids'] ?? []).map((item) => List<int>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
    this.importerCount = List<List<int>>.from((json['importer_count'] ?? []).map((item) => List<int>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": this.userIds.map((i) => i.map((ii) => ii).toList()).toList(),
      "importer_count": this.importerCount.map((i) => i.map((ii) => ii).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'importedContacts';
}