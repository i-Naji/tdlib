part of '../tdapi.dart';

class StorageStatisticsByFileType extends TdObject {
  FileType fileType;
  int size;
  int count;

  /// Contains the storage usage statistics for a specific file type. 
  /// [fileType] File type . 
  /// [size] Total size of the files . 
  /// [count] Total number of files
  StorageStatisticsByFileType({this.fileType,
    this.size,
    this.count});

  /// Parse from a json
  StorageStatisticsByFileType.fromJson(Map<String, dynamic> json)  {
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