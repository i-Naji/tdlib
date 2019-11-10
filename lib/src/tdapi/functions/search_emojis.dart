part of '../tdapi.dart';

class SearchEmojis extends TdFunction {
  String text;
  bool exactMatch;
  dynamic extra;

  /// Searches for emojis by keywords. Supported only if the file database is enabled.
  ///[text] Text to search for .
  /// [exactMatch] True, if only emojis, which exactly match text needs to be returned
  SearchEmojis({this.text, this.exactMatch});

  /// Parse from a json
  SearchEmojis.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "exact_match": this.exactMatch,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "searchEmojis";

  @override
  String getConstructor() => CONSTRUCTOR;
}
