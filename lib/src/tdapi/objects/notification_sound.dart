part of '../tdapi.dart';

class NotificationSound extends TdObject {
  /// Describes a notification sound in MP3 format
  const NotificationSound({
    required this.id,
    required this.duration,
    required this.date,
    required this.title,
    required this.data,
    required this.sound,
    this.extra,
    this.clientId,
  });

  /// [id] Unique identifier of the notification sound
  final int id;

  /// [duration] Duration of the sound, in seconds
  final int duration;

  /// [date] Point in time (Unix timestamp) when the sound was created
  final int date;

  /// [title] Title of the notification sound
  final String title;

  /// [data] Arbitrary data, defined while the sound was uploaded
  final String data;

  /// [sound] File containing the sound
  final File sound;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory NotificationSound.fromJson(Map<String, dynamic> json) =>
      NotificationSound(
        id: int.parse(json['id']),
        duration: json['duration'],
        date: json['date'],
        title: json['title'],
        data: json['data'],
        sound: File.fromJson(json['sound']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "duration": duration,
      "date": date,
      "title": title,
      "data": data,
      "sound": sound.toJson(),
    };
  }

  NotificationSound copyWith({
    int? id,
    int? duration,
    int? date,
    String? title,
    String? data,
    File? sound,
    dynamic extra,
    int? clientId,
  }) =>
      NotificationSound(
        id: id ?? this.id,
        duration: duration ?? this.duration,
        date: date ?? this.date,
        title: title ?? this.title,
        data: data ?? this.data,
        sound: sound ?? this.sound,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'notificationSound';

  @override
  String getConstructor() => CONSTRUCTOR;
}
