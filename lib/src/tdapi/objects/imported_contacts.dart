part of '../tdapi.dart';

class ImportedContacts extends TdObject {
  /// Represents the result of an ImportContacts request
  ImportedContacts({this.userIds, this.importerCount});

  /// [userIds] User identifiers of the imported contacts in the same order as they were specified in the request; 0 if the contact is not yet a registered user
  List<int> userIds;

  /// [importerCount] The number of users that imported the corresponding contact; 0 for already registered users or if unavailable
  List<int> importerCount;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ImportedContacts.fromJson(Map<String, dynamic> json) {
    this.userIds =
        List<int>.from((json['user_ids'] ?? []).map((item) => item).toList());
    this.importerCount = List<int>.from(
        (json['importer_count'] ?? []).map((item) => item).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": this.userIds.map((i) => i).toList(),
      "importer_count": this.importerCount.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'importedContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
