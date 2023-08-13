part of '../tdapi.dart';

class ChatPhotoSticker extends TdObject {
  /// Information about the sticker, which was used to create the chat photo. The sticker is shown at the center of the photo and occupies at most 67% of it
  const ChatPhotoSticker({
    required this.type,
    required this.backgroundFill,
  });

  /// [type] Type of the sticker
  final ChatPhotoStickerType type;

  /// [backgroundFill] The fill to be used as background for the sticker; rotation angle in backgroundFillGradient isn't supported
  final BackgroundFill backgroundFill;

  /// Parse from a json
  factory ChatPhotoSticker.fromJson(Map<String, dynamic> json) =>
      ChatPhotoSticker(
        type: ChatPhotoStickerType.fromJson(json['type']),
        backgroundFill: BackgroundFill.fromJson(json['background_fill']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "background_fill": backgroundFill.toJson(),
    };
  }

  ChatPhotoSticker copyWith({
    ChatPhotoStickerType? type,
    BackgroundFill? backgroundFill,
  }) =>
      ChatPhotoSticker(
        type: type ?? this.type,
        backgroundFill: backgroundFill ?? this.backgroundFill,
      );

  static const CONSTRUCTOR = 'chatPhotoSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
