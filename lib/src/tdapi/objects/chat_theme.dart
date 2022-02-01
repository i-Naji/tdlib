part of '../tdapi.dart';

class ChatTheme extends TdObject {

  /// Describes a chat theme
  const ChatTheme({
    required this.name,
    required this.lightSettings,
    required this.darkSettings,
  });
  
  /// [name] Theme name
  final String name;

  /// [lightSettings] Theme settings for a light chat theme
  final ThemeSettings lightSettings;

  /// [darkSettings] Theme settings for a dark chat theme
  final ThemeSettings darkSettings;
  
  /// Parse from a json
  factory ChatTheme.fromJson(Map<String, dynamic> json) => ChatTheme(
    name: json['name'],
    lightSettings: ThemeSettings.fromJson(json['light_settings']),
    darkSettings: ThemeSettings.fromJson(json['dark_settings']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "light_settings": lightSettings.toJson(),
      "dark_settings": darkSettings.toJson(),
    };
  }
  
  ChatTheme copyWith({
    String? name,
    ThemeSettings? lightSettings,
    ThemeSettings? darkSettings,
  }) => ChatTheme(
    name: name ?? this.name,
    lightSettings: lightSettings ?? this.lightSettings,
    darkSettings: darkSettings ?? this.darkSettings,
  );

  static const CONSTRUCTOR = 'chatTheme';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
