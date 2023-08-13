part of '../tdapi.dart';

class MessageSponsor extends TdObject {
  /// Information about the sponsor of a message
  const MessageSponsor({
    required this.type,
    this.photo,
    required this.info,
  });

  /// [type] Type of the sponsor
  final MessageSponsorType type;

  /// [photo] Photo of the sponsor; may be null if must not be shown
  final ChatPhotoInfo? photo;

  /// [info] Additional optional information about the sponsor to be shown along with the message
  final String info;

  /// Parse from a json
  factory MessageSponsor.fromJson(Map<String, dynamic> json) => MessageSponsor(
        type: MessageSponsorType.fromJson(json['type']),
        photo: json['photo'] == null
            ? null
            : ChatPhotoInfo.fromJson(json['photo']),
        info: json['info'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "photo": photo?.toJson(),
      "info": info,
    };
  }

  MessageSponsor copyWith({
    MessageSponsorType? type,
    ChatPhotoInfo? photo,
    String? info,
  }) =>
      MessageSponsor(
        type: type ?? this.type,
        photo: photo ?? this.photo,
        info: info ?? this.info,
      );

  static const CONSTRUCTOR = 'messageSponsor';

  @override
  String getConstructor() => CONSTRUCTOR;
}
