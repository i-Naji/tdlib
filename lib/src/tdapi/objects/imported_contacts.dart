part of '../tdapi.dart';

class ImportedContacts implements TdObject {
  List<int> userIds;
  List<int> importerCount;
  dynamic extra;

  /// Represents the result of an ImportContacts request.
  ///[userIds] User identifiers of the imported contacts in the same order as they were specified in the request; 0 if the contact is not yet a registered user.
  /// [importerCount] The number of users that imported the corresponding contact; 0 for already registered users or if unavailable
  ImportedContacts({this.userIds, this.importerCount});

  /// Parse from a json
  ImportedContacts.fromJson(Map<String, dynamic> json) {
    this.userIds = List<int>.from(json['user_ids'] ?? []);
    this.importerCount = List<int>.from(json['importer_count'] ?? []);
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": this.userIds,
      "importer_count": this.importerCount
    };
  }

  static const String CONSTRUCTOR = "importedContacts";

  @override
  String getConstructor() => CONSTRUCTOR;
}
