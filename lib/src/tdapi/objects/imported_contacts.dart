part of '../tdapi.dart';

class ImportedContacts extends TdObject {

  /// Represents the result of an ImportContacts request
  const ImportedContacts({
    required this.userIds,
    required this.importerCount,
    this.extra,
    this.clientId,
  });
  
  /// [userIds] User identifiers of the imported contacts in the same order as they were specified in the request; 0 if the contact is not yet a registered user
  final List<int> userIds;

  /// [importerCount] The number of users that imported the corresponding contact; 0 for already registered users or if unavailable
  final List<int> importerCount;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ImportedContacts.fromJson(Map<String, dynamic> json) => ImportedContacts(
    userIds: List<int>.from((json['user_ids'] ?? []).map((item) => item).toList()),
    importerCount: List<int>.from((json['importer_count'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": userIds.map((i) => i).toList(),
      "importer_count": importerCount.map((i) => i).toList(),
    };
  }
  
  ImportedContacts copyWith({
    List<int>? userIds,
    List<int>? importerCount,
    dynamic extra,
    int? clientId,
  }) => ImportedContacts(
    userIds: userIds ?? this.userIds,
    importerCount: importerCount ?? this.importerCount,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'importedContacts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
