part of '../tdapi.dart';

class TMeUrls extends TdObject {
  List<List<TMeUrl>> urls;
  dynamic extra;

  /// Contains a list of t.me URLs. 
  /// [urls] List of URLs
  TMeUrls({this.urls});

  /// Parse from a json
  TMeUrls.fromJson(Map<String, dynamic> json)  {
    this.urls = List<List<TMeUrl>>.from((json['urls'] ?? []).map((item) => List<TMeUrl>.from((item ?? []).map((innerItem) => TMeUrl.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "urls": this.urls.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'tMeUrls';
}