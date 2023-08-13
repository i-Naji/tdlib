part of '../tdapi.dart';

class MessageAutoDeleteTime extends TdObject {
  /// Contains default auto-delete timer setting for new chats
  const MessageAutoDeleteTime({
    required this.time,
    this.extra,
    this.clientId,
  });

  /// [time] Message auto-delete time, in seconds. If 0, then messages aren't deleted automatically
  final int time;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory MessageAutoDeleteTime.fromJson(Map<String, dynamic> json) =>
      MessageAutoDeleteTime(
        time: json['time'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "time": time,
    };
  }

  MessageAutoDeleteTime copyWith({
    int? time,
    dynamic extra,
    int? clientId,
  }) =>
      MessageAutoDeleteTime(
        time: time ?? this.time,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'messageAutoDeleteTime';

  @override
  String getConstructor() => CONSTRUCTOR;
}
