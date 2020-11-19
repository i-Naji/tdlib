part of '../tdapi.dart';

class GetMessageLinkInfo extends TdFunction {
  /// Returns information about a public or private message link
  GetMessageLinkInfo({this.url});

  /// [url] The message link in the format "https://t.me/c/...", or "tg://privatepost?...", or "https://t.me/username/...", or "tg://resolve?..."
  String url;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetMessageLinkInfo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMessageLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
