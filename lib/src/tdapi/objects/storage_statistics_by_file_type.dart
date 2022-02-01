part of '../tdapi.dart';

class StorageStatisticsByFileType extends TdObject {

  /// Contains the storage usage statistics for a specific file type
  const StorageStatisticsByFileType({
    required this.fileType,
    required this.size,
    required this.count,
  });
  
  /// [fileType] File type 
  final FileType fileType;

  /// [size] Total size of the files, in bytes 
  final int size;

  /// [count] Total number of files
  final int count;
  
  /// Parse from a json
  factory StorageStatisticsByFileType.fromJson(Map<String, dynamic> json) => StorageStatisticsByFileType(
    fileType: FileType.fromJson(json['file_type']),
    size: json['size'],
    count: json['count'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_type": fileType.toJson(),
      "size": size,
      "count": count,
    };
  }
  
  StorageStatisticsByFileType copyWith({
    FileType? fileType,
    int? size,
    int? count,
  }) => StorageStatisticsByFileType(
    fileType: fileType ?? this.fileType,
    size: size ?? this.size,
    count: count ?? this.count,
  );

  static const CONSTRUCTOR = 'storageStatisticsByFileType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
