part of '../tdapi.dart';

class WebAppInfo extends TdObject {
  /// Contains information about a Web App
  const WebAppInfo({
    required this.launchId,
    required this.url,
    this.extra,
    this.clientId,
  });

  /// [launchId] Unique identifier for the Web App launch
  final int launchId;

  /// [url] A Web App URL to open in a web view
  final String url;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory WebAppInfo.fromJson(Map<String, dynamic> json) => WebAppInfo(
        launchId: int.parse(json['launch_id']),
        url: json['url'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "launch_id": launchId,
      "url": url,
    };
  }

  WebAppInfo copyWith({
    int? launchId,
    String? url,
    dynamic extra,
    int? clientId,
  }) =>
      WebAppInfo(
        launchId: launchId ?? this.launchId,
        url: url ?? this.url,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'webAppInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
