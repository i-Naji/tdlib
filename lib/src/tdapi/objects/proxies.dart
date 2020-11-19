part of '../tdapi.dart';

class Proxies extends TdObject {
  /// Represents a list of proxy servers
  Proxies({this.proxies});

  /// [proxies] List of proxy servers
  List<Proxy> proxies;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  Proxies.fromJson(Map<String, dynamic> json) {
    this.proxies = List<Proxy>.from((json['proxies'] ?? [])
        .map((item) => Proxy.fromJson(item ?? <String, dynamic>{}))
        .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "proxies": this.proxies.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'proxies';

  @override
  String getConstructor() => CONSTRUCTOR;
}
