part of '../tdapi.dart';

class AttachmentMenuBotColor extends TdObject {
  /// Describes a color to highlight a bot added to attachment menu
  const AttachmentMenuBotColor({
    required this.lightColor,
    required this.darkColor,
  });

  /// [lightColor] Color in the RGB24 format for light themes
  final int lightColor;

  /// [darkColor] Color in the RGB24 format for dark themes
  final int darkColor;

  /// Parse from a json
  factory AttachmentMenuBotColor.fromJson(Map<String, dynamic> json) =>
      AttachmentMenuBotColor(
        lightColor: json['light_color'],
        darkColor: json['dark_color'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "light_color": lightColor,
      "dark_color": darkColor,
    };
  }

  AttachmentMenuBotColor copyWith({
    int? lightColor,
    int? darkColor,
  }) =>
      AttachmentMenuBotColor(
        lightColor: lightColor ?? this.lightColor,
        darkColor: darkColor ?? this.darkColor,
      );

  static const CONSTRUCTOR = 'attachmentMenuBotColor';

  @override
  String getConstructor() => CONSTRUCTOR;
}
