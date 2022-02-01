part of '../tdapi.dart';

class Hashtags extends TdObject {

  /// Contains a list of hashtags
  const Hashtags({
    required this.hashtags,
    this.extra,
    this.clientId,
  });
  
  /// [hashtags] A list of hashtags
  final List<String> hashtags;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Hashtags.fromJson(Map<String, dynamic> json) => Hashtags(
    hashtags: List<String>.from((json['hashtags'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "hashtags": hashtags.map((i) => i).toList(),
    };
  }
  
  Hashtags copyWith({
    List<String>? hashtags,
    dynamic extra,
    int? clientId,
  }) => Hashtags(
    hashtags: hashtags ?? this.hashtags,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'hashtags';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
