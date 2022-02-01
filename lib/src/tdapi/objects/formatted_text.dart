part of '../tdapi.dart';

class FormattedText extends TdObject {

  /// A text with some entities
  const FormattedText({
    required this.text,
    required this.entities,
    this.extra,
    this.clientId,
  });
  
  /// [text] The text 
  final String text;

  /// [entities] Entities contained in the text. Entities can be nested, but must not mutually intersect with each other.. Pre, Code and PreCode entities can't contain other entities. Bold, Italic, Underline, Strikethrough, and Spoiler entities can contain and to be contained in all other entities. All other entities can't contain each other
  final List<TextEntity> entities;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory FormattedText.fromJson(Map<String, dynamic> json) => FormattedText(
    text: json['text'],
    entities: List<TextEntity>.from((json['entities'] ?? []).map((item) => TextEntity.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "entities": entities.map((i) => i.toJson()).toList(),
    };
  }
  
  FormattedText copyWith({
    String? text,
    List<TextEntity>? entities,
    dynamic extra,
    int? clientId,
  }) => FormattedText(
    text: text ?? this.text,
    entities: entities ?? this.entities,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'formattedText';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
