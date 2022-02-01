part of '../tdapi.dart';

class GetWebPagePreview extends TdFunction {

  /// Returns a web page preview by the text of the message. Do not call this function too often. Returns a 404 error if the web page has no preview
  const GetWebPagePreview({
    required this.text,
  });
  
  /// [text] Message text with formatting
  final FormattedText text;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "text": text.toJson(),
      "@extra": extra,
    };
  }
  
  GetWebPagePreview copyWith({
    FormattedText? text,
  }) => GetWebPagePreview(
    text: text ?? this.text,
  );

  static const CONSTRUCTOR = 'getWebPagePreview';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
