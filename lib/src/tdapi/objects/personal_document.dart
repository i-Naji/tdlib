part of '../tdapi.dart';

class PersonalDocument extends TdObject {
  List<DatedFile> files;
  List<DatedFile> translation;

  /// A personal document, containing some information about a user. 
  /// [files] List of files containing the pages of the document . 
  /// [translation] List of files containing a certified English translation of the document
  PersonalDocument({this.files,
    this.translation});

  /// Parse from a json
  PersonalDocument.fromJson(Map<String, dynamic> json)  {
    this.files = List<DatedFile>.from((json['files'] ?? []).map((item) => DatedFile.fromJson(item ?? <String, dynamic>{})).toList());
    this.translation = List<DatedFile>.from((json['translation'] ?? []).map((item) => DatedFile.fromJson(item ?? <String, dynamic>{})).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "files": this.files.map((i) => i.toJson()).toList(),
      "translation": this.translation.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'personalDocument';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}