part of '../tdapi.dart';

class TMeUrls implements TLObject {
  List<TMeUrl> urls;
  dynamic extra;

  /// Contains a list of t.me URLs.
  ///[urls] List of URLs
  TMeUrls({this.urls});

  /// Parse from a json
  TMeUrls.fromJson(Map<String, dynamic> json) {
    this.urls = (json['urls'] ?? [])
        .map((listValue) => TMeUrl.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'urls': this.urls.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'tMeUrls';

  @override
  String getConstructor() => CONSTRUCTOR;
}
