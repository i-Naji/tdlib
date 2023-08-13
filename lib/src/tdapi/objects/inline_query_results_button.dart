part of '../tdapi.dart';

class InlineQueryResultsButton extends TdObject {
  /// Represents a button to be shown above inline query results
  const InlineQueryResultsButton({
    required this.text,
    required this.type,
  });

  /// [text] The text of the button
  final String text;

  /// [type] Type of the button
  final InlineQueryResultsButtonType type;

  /// Parse from a json
  factory InlineQueryResultsButton.fromJson(Map<String, dynamic> json) =>
      InlineQueryResultsButton(
        text: json['text'],
        type: InlineQueryResultsButtonType.fromJson(json['type']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text,
      "type": type.toJson(),
    };
  }

  InlineQueryResultsButton copyWith({
    String? text,
    InlineQueryResultsButtonType? type,
  }) =>
      InlineQueryResultsButton(
        text: text ?? this.text,
        type: type ?? this.type,
      );

  static const CONSTRUCTOR = 'inlineQueryResultsButton';

  @override
  String getConstructor() => CONSTRUCTOR;
}
