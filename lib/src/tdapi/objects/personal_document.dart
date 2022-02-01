part of '../tdapi.dart';

class PersonalDocument extends TdObject {

  /// A personal document, containing some information about a user
  const PersonalDocument({
    required this.files,
    required this.translation,
  });
  
  /// [files] List of files containing the pages of the document 
  final List<DatedFile> files;

  /// [translation] List of files containing a certified English translation of the document
  final List<DatedFile> translation;
  
  /// Parse from a json
  factory PersonalDocument.fromJson(Map<String, dynamic> json) => PersonalDocument(
    files: List<DatedFile>.from((json['files'] ?? []).map((item) => DatedFile.fromJson(item)).toList()),
    translation: List<DatedFile>.from((json['translation'] ?? []).map((item) => DatedFile.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "files": files.map((i) => i.toJson()).toList(),
      "translation": translation.map((i) => i.toJson()).toList(),
    };
  }
  
  PersonalDocument copyWith({
    List<DatedFile>? files,
    List<DatedFile>? translation,
  }) => PersonalDocument(
    files: files ?? this.files,
    translation: translation ?? this.translation,
  );

  static const CONSTRUCTOR = 'personalDocument';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
