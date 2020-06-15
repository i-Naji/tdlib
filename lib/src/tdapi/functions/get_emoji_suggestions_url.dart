part of '../tdapi.dart';

class GetEmojiSuggestionsUrl extends TdFunction {
  String languageCode;
  dynamic extra;

  /// Returns an HTTP URL which can be used to automatically log in to the translation platform and suggest new emoji replacements. The URL will be valid for 30 seconds after generation. 
  /// [languageCode] Language code for which the emoji replacements will be suggested
  GetEmojiSuggestionsUrl({this.languageCode});

  /// Parse from a json
  GetEmojiSuggestionsUrl.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_code": this.languageCode,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getEmojiSuggestionsUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}