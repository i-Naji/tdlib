part of '../tdapi.dart';

class Seconds extends TdObject {

  /// Contains a value representing a number of seconds
  const Seconds({
    required this.seconds,
    this.extra,
    this.clientId,
  });
  
  /// [seconds] Number of seconds
  final double seconds;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Seconds.fromJson(Map<String, dynamic> json) => Seconds(
    seconds: json['seconds'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "seconds": seconds,
    };
  }
  
  Seconds copyWith({
    double? seconds,
    dynamic extra,
    int? clientId,
  }) => Seconds(
    seconds: seconds ?? this.seconds,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'seconds';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
