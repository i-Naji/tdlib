part of '../tdapi.dart';

class TMeUrls extends TdObject {

  /// Contains a list of t.me URLs
  const TMeUrls({
    required this.urls,
    this.extra,
    this.clientId,
  });
  
  /// [urls] List of URLs
  final List<TMeUrl> urls;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory TMeUrls.fromJson(Map<String, dynamic> json) => TMeUrls(
    urls: List<TMeUrl>.from((json['urls'] ?? []).map((item) => TMeUrl.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "urls": urls.map((i) => i.toJson()).toList(),
    };
  }
  
  TMeUrls copyWith({
    List<TMeUrl>? urls,
    dynamic extra,
    int? clientId,
  }) => TMeUrls(
    urls: urls ?? this.urls,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'tMeUrls';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
