part of '../tdapi.dart';

class CleanFileName extends TdFunction {
  /// Removes potentially dangerous characters from the name of a file. The encoding of the file name is supposed to be UTF-8. Returns an empty string on failure. Can be called synchronously
  CleanFileName({this.fileName});

  /// [fileName] File name or path to the file
  String fileName;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CleanFileName.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_name": this.fileName,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'cleanFileName';

  @override
  String getConstructor() => CONSTRUCTOR;
}
