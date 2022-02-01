part of '../tdapi.dart';

class ThemeSettings extends TdObject {

  /// Describes theme settings
  const ThemeSettings({
    required this.accentColor,
    this.background,
    required this.outgoingMessageFill,
    required this.animateOutgoingMessageFill,
    required this.outgoingMessageAccentColor,
  });
  
  /// [accentColor] Theme accent color in ARGB format
  final int accentColor;

  /// [background] The background to be used in chats; may be null
  final Background? background;

  /// [outgoingMessageFill] The fill to be used as a background for outgoing messages
  final BackgroundFill outgoingMessageFill;

  /// [animateOutgoingMessageFill] If true, the freeform gradient fill needs to be animated on every sent message
  final bool animateOutgoingMessageFill;

  /// [outgoingMessageAccentColor] Accent color of outgoing messages in ARGB format
  final int outgoingMessageAccentColor;
  
  /// Parse from a json
  factory ThemeSettings.fromJson(Map<String, dynamic> json) => ThemeSettings(
    accentColor: json['accent_color'],
    background: json['background'] == null ? null : Background.fromJson(json['background']),
    outgoingMessageFill: BackgroundFill.fromJson(json['outgoing_message_fill']),
    animateOutgoingMessageFill: json['animate_outgoing_message_fill'],
    outgoingMessageAccentColor: json['outgoing_message_accent_color'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "accent_color": accentColor,
      "background": background?.toJson(),
      "outgoing_message_fill": outgoingMessageFill.toJson(),
      "animate_outgoing_message_fill": animateOutgoingMessageFill,
      "outgoing_message_accent_color": outgoingMessageAccentColor,
    };
  }
  
  ThemeSettings copyWith({
    int? accentColor,
    Background? background,
    BackgroundFill? outgoingMessageFill,
    bool? animateOutgoingMessageFill,
    int? outgoingMessageAccentColor,
  }) => ThemeSettings(
    accentColor: accentColor ?? this.accentColor,
    background: background ?? this.background,
    outgoingMessageFill: outgoingMessageFill ?? this.outgoingMessageFill,
    animateOutgoingMessageFill: animateOutgoingMessageFill ?? this.animateOutgoingMessageFill,
    outgoingMessageAccentColor: outgoingMessageAccentColor ?? this.outgoingMessageAccentColor,
  );

  static const CONSTRUCTOR = 'themeSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
