part of '../tdapi.dart';

class CleanFileName extends TLFunction {
  String fileName;
  dynamic extra;

  /// Removes potentially dangerous characters from the name of a file. The encoding of the file name is supposed to be UTF-8. Returns an empty string on failure. This is an offline method. Can be called before authorization. Can be called synchronously.
  ///[fileName] File name or path to the file
  CleanFileName({this.fileName});

  /// Parse from a json
  CleanFileName.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_name": this.fileName,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "cleanFileName";

  @override
  String getConstructor() => CONSTRUCTOR;
}
