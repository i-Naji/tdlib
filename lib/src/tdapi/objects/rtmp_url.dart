part of '../tdapi.dart';

class RtmpUrl extends TdObject {
  /// Represents an RTMP URL
  const RtmpUrl({
    required this.url,
    required this.streamKey,
    this.extra,
    this.clientId,
  });

  /// [url] The URL
  final String url;

  /// [streamKey] Stream key
  final String streamKey;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory RtmpUrl.fromJson(Map<String, dynamic> json) => RtmpUrl(
        url: json['url'],
        streamKey: json['stream_key'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "stream_key": streamKey,
    };
  }

  RtmpUrl copyWith({
    String? url,
    String? streamKey,
    dynamic extra,
    int? clientId,
  }) =>
      RtmpUrl(
        url: url ?? this.url,
        streamKey: streamKey ?? this.streamKey,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'rtmpUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
