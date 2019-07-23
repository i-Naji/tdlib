part of '../tdapi.dart';

class GetFileDownloadedPrefixSize extends TdFunction {
  int fileId;
  int offset;
  dynamic extra;

  /// Returns file downloaded prefix size from a given offset.
  ///[fileId] Identifier of the file .
  /// [offset] Offset from which downloaded prefix size should be calculated
  GetFileDownloadedPrefixSize({this.fileId, this.offset});

  /// Parse from a json
  GetFileDownloadedPrefixSize.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "offset": this.offset,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getFileDownloadedPrefixSize";

  @override
  String getConstructor() => CONSTRUCTOR;
}
