part of '../tdapi.dart';

class TMeUrl implements TLObject {
  String url;
  var type;

  /// Represents a URL linking to an internal Telegram entity.
  ///[url] URL .
  /// [type] Type of the URL
  TMeUrl({this.url, this.type});

  /// Parse from a json
  TMeUrl.fromJson(Map<String, dynamic> json) {
    this.url = json['url'];
    this.type = TMeUrlType.fromJson(json['type'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, 'url': this.url, 'type': this.type.toJson()};
  }

  static const String CONSTRUCTOR = 'tMeUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
