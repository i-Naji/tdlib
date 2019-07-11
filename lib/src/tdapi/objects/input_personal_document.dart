part of '../tdapi.dart';

class InputPersonalDocument implements TLObject {
  List files;
  List translation;

  /// A personal document to be saved to Telegram Passport.
  ///[files] List of files containing the pages of the document .
  /// [translation] List of files containing a certified English translation of the document
  InputPersonalDocument({this.files, this.translation});

  /// Parse from a json
  InputPersonalDocument.fromJson(Map<String, dynamic> json) {
    this.files = (json['files'] ?? [])
        .map((listValue) => InputFile.fromJson(listValue))
        .toList();
    this.translation = (json['translation'] ?? [])
        .map((listValue) => InputFile.fromJson(listValue))
        .toList();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "files": this.files.map((listItem) => listItem.toJson()).toList(),
      "translation":
          this.translation.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "inputPersonalDocument";

  @override
  String getConstructor() => CONSTRUCTOR;
}
