part of '../tdapi.dart';

class GetFileDownloadedPrefixSize extends TdFunction {

  /// Returns file downloaded prefix size from a given offset, in bytes
  const GetFileDownloadedPrefixSize({
    required this.fileId,
    required this.offset,
  });
  
  /// [fileId] Identifier of the file 
  final int fileId;

  /// [offset] Offset from which downloaded prefix size needs to be calculated
  final int offset;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_id": fileId,
      "offset": offset,
      "@extra": extra,
    };
  }
  
  GetFileDownloadedPrefixSize copyWith({
    int? fileId,
    int? offset,
  }) => GetFileDownloadedPrefixSize(
    fileId: fileId ?? this.fileId,
    offset: offset ?? this.offset,
  );

  static const CONSTRUCTOR = 'getFileDownloadedPrefixSize';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
