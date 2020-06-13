part of '../tdapi.dart';

class GetMessageLinkInfo extends TdFunction {
  String url;
  dynamic extra;

  /// Returns information about a public or private message link. 
  /// [url] The message link in the format "https://t.me/c/...", or "tg://privatepost?...", or "https://t.me/username/...", or "tg://resolve?..."
  GetMessageLinkInfo({this.url});

  /// Parse from a json
  GetMessageLinkInfo.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMessageLinkInfo';
}