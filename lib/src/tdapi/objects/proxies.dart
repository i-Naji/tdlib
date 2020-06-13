part of '../tdapi.dart';

class Proxies extends TdObject {
  List<List<Proxy>> proxies;
  dynamic extra;

  /// Represents a list of proxy servers. 
  /// [proxies] List of proxy servers
  Proxies({this.proxies});

  /// Parse from a json
  Proxies.fromJson(Map<String, dynamic> json)  {
    this.proxies = List<List<Proxy>>.from((json['proxies'] ?? []).map((item) => List<Proxy>.from((item ?? []).map((innerItem) => Proxy.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "proxies": this.proxies.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'proxies';
}