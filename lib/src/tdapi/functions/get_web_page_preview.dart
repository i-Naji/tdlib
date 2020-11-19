part of '../tdapi.dart';

class GetWebPagePreview extends TdFunction {
  /// Returns a web page preview by the text of the message. Do not call this function too often. Returns a 404 error if the web page has no preview
  GetWebPagePreview({this.text});

  /// [text] Message text with formatting
  FormattedText text;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetWebPagePreview.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getWebPagePreview';

  @override
  String getConstructor() => CONSTRUCTOR;
}
