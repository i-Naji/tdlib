part of '../tdapi.dart';

class GetTextEntities extends TdFunction {

  /// Returns all entities (mentions, hashtags, cashtags, bot commands, bank card numbers, URLs, and email addresses) contained in the text. Can be called synchronously
  const GetTextEntities({
    required this.text,
  });
  
  /// [text] The text in which to look for entites
  final String text;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "@extra": extra,
    };
  }
  
  GetTextEntities copyWith({
    String? text,
  }) => GetTextEntities(
    text: text ?? this.text,
  );

  static const CONSTRUCTOR = 'getTextEntities';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
