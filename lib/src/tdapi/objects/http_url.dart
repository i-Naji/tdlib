part of '../tdapi.dart';

class HttpUrl extends TdObject {
  /// Contains an HTTP URL
  HttpUrl({this.url});

  /// [url] The URL
  String url;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  HttpUrl.fromJson(Map<String, dynamic> json) {
    this.url = json['url'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
    };
  }

  static const CONSTRUCTOR = 'httpUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
