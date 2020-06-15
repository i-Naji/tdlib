part of '../tdapi.dart';

class FormattedText extends TdObject {
  String text;
  List<TextEntity> entities;
  dynamic extra;

  /// A text with some entities. 
  /// [text] The text . 
  /// [entities] Entities contained in the text. Entities can be nested, but must not mutually intersect with each other.. Pre, Code and PreCode entities can't contain other entities. Bold, Italic, Underline and Strikethrough entities can contain and to be contained in all other entities. All other entities can't contain each other
  FormattedText({this.text,
    this.entities});

  /// Parse from a json
  FormattedText.fromJson(Map<String, dynamic> json)  {
    this.text = json['text'];
    this.entities = List<TextEntity>.from((json['entities'] ?? []).map((item) => TextEntity.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "entities": this.entities.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'formattedText';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}