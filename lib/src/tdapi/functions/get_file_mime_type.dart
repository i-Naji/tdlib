part of '../tdapi.dart';

class GetFileMimeType extends TdFunction {
  String fileName;
  dynamic extra;

  /// Returns the MIME type of a file, guessed by its extension. Returns an empty string on failure. This is an offline method. Can be called before authorization. Can be called synchronously. 
  /// [fileName] The name of the file or path to the file
  GetFileMimeType({this.fileName});

  /// Parse from a json
  GetFileMimeType.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_name": this.fileName,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getFileMimeType';
}