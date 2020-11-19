part of '../tdapi.dart';

class GetFileDownloadedPrefixSize extends TdFunction {
  /// Returns file downloaded prefix size from a given offset
  GetFileDownloadedPrefixSize({this.fileId, this.offset});

  /// [fileId] Identifier of the file
  int fileId;

  /// [offset] Offset from which downloaded prefix size should be calculated
  int offset;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetFileDownloadedPrefixSize.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "offset": this.offset,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getFileDownloadedPrefixSize';

  @override
  String getConstructor() => CONSTRUCTOR;
}
