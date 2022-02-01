part of '../tdapi.dart';

class StorageStatisticsFast extends TdObject {

  /// Contains approximate storage usage statistics, excluding files of unknown file type
  const StorageStatisticsFast({
    required this.filesSize,
    required this.fileCount,
    required this.databaseSize,
    required this.languagePackDatabaseSize,
    required this.logSize,
    this.extra,
    this.clientId,
  });
  
  /// [filesSize] Approximate total size of files, in bytes 
  final int filesSize;

  /// [fileCount] Approximate number of files
  final int fileCount;

  /// [databaseSize] Size of the database
  final int databaseSize;

  /// [languagePackDatabaseSize] Size of the language pack database 
  final int languagePackDatabaseSize;

  /// [logSize] Size of the TDLib internal log
  final int logSize;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StorageStatisticsFast.fromJson(Map<String, dynamic> json) => StorageStatisticsFast(
    filesSize: json['files_size'],
    fileCount: json['file_count'],
    databaseSize: json['database_size'],
    languagePackDatabaseSize: json['language_pack_database_size'],
    logSize: json['log_size'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "files_size": filesSize,
      "file_count": fileCount,
      "database_size": databaseSize,
      "language_pack_database_size": languagePackDatabaseSize,
      "log_size": logSize,
    };
  }
  
  StorageStatisticsFast copyWith({
    int? filesSize,
    int? fileCount,
    int? databaseSize,
    int? languagePackDatabaseSize,
    int? logSize,
    dynamic extra,
    int? clientId,
  }) => StorageStatisticsFast(
    filesSize: filesSize ?? this.filesSize,
    fileCount: fileCount ?? this.fileCount,
    databaseSize: databaseSize ?? this.databaseSize,
    languagePackDatabaseSize: languagePackDatabaseSize ?? this.languagePackDatabaseSize,
    logSize: logSize ?? this.logSize,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'storageStatisticsFast';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
