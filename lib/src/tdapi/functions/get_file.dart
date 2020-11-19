part of '../tdapi.dart';

class GetFile extends TdFunction {
  /// Returns information about a file; this is an offline request
  GetFile({this.fileId});

  /// [fileId] Identifier of the file to get
  int fileId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetFile.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
