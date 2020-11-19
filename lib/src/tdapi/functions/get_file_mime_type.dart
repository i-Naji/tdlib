part of '../tdapi.dart';

class GetFileMimeType extends TdFunction {
  /// Returns the MIME type of a file, guessed by its extension. Returns an empty string on failure. Can be called synchronously
  GetFileMimeType({this.fileName});

  /// [fileName] The name of the file or path to the file
  String fileName;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetFileMimeType.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_name": this.fileName,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getFileMimeType';

  @override
  String getConstructor() => CONSTRUCTOR;
}
