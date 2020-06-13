part of '../tdapi.dart';

class PersonalDocument extends TdObject {
  List<List<DatedFile>> files;
  List<List<DatedFile>> translation;

  /// A personal document, containing some information about a user. 
  /// [files] List of files containing the pages of the document . 
  /// [translation] List of files containing a certified English translation of the document
  PersonalDocument({this.files,
    this.translation});

  /// Parse from a json
  PersonalDocument.fromJson(Map<String, dynamic> json)  {
    this.files = List<List<DatedFile>>.from((json['files'] ?? []).map((item) => List<DatedFile>.from((item ?? []).map((innerItem) => DatedFile.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.translation = List<List<DatedFile>>.from((json['translation'] ?? []).map((item) => List<DatedFile>.from((item ?? []).map((innerItem) => DatedFile.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "files": this.files.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "translation": this.translation.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'personalDocument';
}