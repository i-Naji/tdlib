part of '../tdapi.dart';

class StorageStatisticsByFileType extends TdObject {
  /// Contains the storage usage statistics for a specific file type
  StorageStatisticsByFileType({this.fileType, this.size, this.count});

  /// [fileType] File type
  FileType fileType;

  /// [size] Total size of the files
  int size;

  /// [count] Total number of files
  int count;

  /// Parse from a json
  StorageStatisticsByFileType.fromJson(Map<String, dynamic> json) {
    this.fileType = FileType.fromJson(json['file_type'] ?? <String, dynamic>{});
    this.size = json['size'];
    this.count = json['count'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_type": this.fileType == null ? null : this.fileType.toJson(),
      "size": this.size,
      "count": this.count,
    };
  }

  static const CONSTRUCTOR = 'storageStatisticsByFileType';

  @override
  String getConstructor() => CONSTRUCTOR;
}
