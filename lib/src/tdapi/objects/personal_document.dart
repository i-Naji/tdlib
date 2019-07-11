part of '../tdapi.dart';

class PersonalDocument implements TLObject {
  List<DatedFile> files;
  List<DatedFile> translation;

  /// A personal document, containing some information about a user.
  ///[files] List of files containing the pages of the document .
  /// [translation] List of files containing a certified English translation of the document
  PersonalDocument({this.files, this.translation});

  /// Parse from a json
  PersonalDocument.fromJson(Map<String, dynamic> json) {
    this.files = List<DatedFile>.from((json['files'] ?? [])
        .map((listValue) => DatedFile.fromJson(listValue))
        .toList());
    this.translation = List<DatedFile>.from((json['translation'] ?? [])
        .map((listValue) => DatedFile.fromJson(listValue))
        .toList());
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

  static const String CONSTRUCTOR = "personalDocument";

  @override
  String getConstructor() => CONSTRUCTOR;
}
