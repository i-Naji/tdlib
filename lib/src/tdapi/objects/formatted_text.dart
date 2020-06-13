part of '../tdapi.dart';

class FormattedText extends TdObject {
  String text;
  List<List<TextEntity>> entities;
  dynamic extra;

  /// A text with some entities. 
  /// [text] The text . 
  /// [entities] Entities contained in the text. Entities can be nested, but must not mutually intersect with each other.. Pre, Code and PreCode entities can't contain other entities. Bold, Italic, Underline and Strikethrough entities can contain and to be contained in all other entities. All other entities can't contain each other
  FormattedText({this.text,
    this.entities});

  /// Parse from a json
  FormattedText.fromJson(Map<String, dynamic> json)  {
    this.text = json['text'];
    this.entities = List<List<TextEntity>>.from((json['entities'] ?? []).map((item) => List<TextEntity>.from((item ?? []).map((innerItem) => TextEntity.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "entities": this.entities.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'formattedText';
}