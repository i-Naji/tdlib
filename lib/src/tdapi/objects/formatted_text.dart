part of '../tdapi.dart';

class FormattedText implements TLObject {
  String text;
  List<TextEntity> entities;
  dynamic extra;

  /// A text with some entities.
  ///[text] The text .
  /// [entities] Entities contained in the text
  FormattedText({this.text, this.entities});

  /// Parse from a json
  FormattedText.fromJson(Map<String, dynamic> json) {
    this.text = json['text'];
    this.entities = List<TextEntity>.from((json['entities'] ?? [])
        .map((listValue) => TextEntity.fromJson(listValue))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "entities": this.entities.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "formattedText";

  @override
  String getConstructor() => CONSTRUCTOR;
}
