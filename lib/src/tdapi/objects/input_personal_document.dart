part of '../tdapi.dart';

class InputPersonalDocument extends TdObject {
  List<List<InputFile>> files;
  List<List<InputFile>> translation;

  /// A personal document to be saved to Telegram Passport. 
  /// [files] List of files containing the pages of the document . 
  /// [translation] List of files containing a certified English translation of the document
  InputPersonalDocument({this.files,
    this.translation});

  /// Parse from a json
  InputPersonalDocument.fromJson(Map<String, dynamic> json)  {
    this.files = List<List<InputFile>>.from((json['files'] ?? []).map((item) => List<InputFile>.from((item ?? []).map((innerItem) => InputFile.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.translation = List<List<InputFile>>.from((json['translation'] ?? []).map((item) => List<InputFile>.from((item ?? []).map((innerItem) => InputFile.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "files": this.files.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "translation": this.translation.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'inputPersonalDocument';
}