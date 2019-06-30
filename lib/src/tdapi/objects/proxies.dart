part of '../tdapi.dart';

class Proxies implements TLObject {
  List<Proxy> proxies;
  dynamic extra;

  /// Represents a list of proxy servers.
  ///[proxies] List of proxy servers
  Proxies({this.proxies});

  /// Parse from a json
  Proxies.fromJson(Map<String, dynamic> json) {
    this.proxies = (json['proxies'] ?? [])
        .map((listValue) => Proxy.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'proxies': this.proxies.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'proxies';

  @override
  String getConstructor() => CONSTRUCTOR;
}
