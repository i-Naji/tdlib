part of '../tdapi.dart';

class StorageStatisticsFast extends TdObject {
  /// Contains approximate storage usage statistics, excluding files of unknown file type
  StorageStatisticsFast(
      {this.filesSize,
      this.fileCount,
      this.databaseSize,
      this.languagePackDatabaseSize,
      this.logSize});

  /// [filesSize] Approximate total size of files
  int filesSize;

  /// [fileCount] Approximate number of files
  int fileCount;

  /// [databaseSize] Size of the database
  int databaseSize;

  /// [languagePackDatabaseSize] Size of the language pack database
  int languagePackDatabaseSize;

  /// [logSize] Size of the TDLib internal log
  int logSize;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  StorageStatisticsFast.fromJson(Map<String, dynamic> json) {
    this.filesSize = json['files_size'];
    this.fileCount = json['file_count'];
    this.databaseSize = json['database_size'];
    this.languagePackDatabaseSize = json['language_pack_database_size'];
    this.logSize = json['log_size'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "files_size": this.filesSize,
      "file_count": this.fileCount,
      "database_size": this.databaseSize,
      "language_pack_database_size": this.languagePackDatabaseSize,
      "log_size": this.logSize,
    };
  }

  static const CONSTRUCTOR = 'storageStatisticsFast';

  @override
  String getConstructor() => CONSTRUCTOR;
}
