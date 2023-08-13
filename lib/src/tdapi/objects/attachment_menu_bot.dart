part of '../tdapi.dart';

class AttachmentMenuBot extends TdObject {
  /// Represents a bot, which can be added to attachment menu
  const AttachmentMenuBot({
    required this.botUserId,
    required this.supportsSelfChat,
    required this.supportsUserChats,
    required this.supportsBotChats,
    required this.supportsGroupChats,
    required this.supportsChannelChats,
    required this.supportsSettings,
    required this.requestWriteAccess,
    required this.name,
    this.nameColor,
    this.defaultIcon,
    this.iosStaticIcon,
    this.iosAnimatedIcon,
    this.androidIcon,
    this.macosIcon,
    this.iconColor,
    this.webAppPlaceholder,
    this.extra,
    this.clientId,
  });

  /// [botUserId] User identifier of the bot added to attachment menu
  final int botUserId;

  /// [supportsSelfChat] True, if the bot supports opening from attachment menu in the chat with the bot
  final bool supportsSelfChat;

  /// [supportsUserChats] True, if the bot supports opening from attachment menu in private chats with ordinary users
  final bool supportsUserChats;

  /// [supportsBotChats] True, if the bot supports opening from attachment menu in private chats with other bots
  final bool supportsBotChats;

  /// [supportsGroupChats] True, if the bot supports opening from attachment menu in basic group and supergroup chats
  final bool supportsGroupChats;

  /// [supportsChannelChats] True, if the bot supports opening from attachment menu in channel chats
  final bool supportsChannelChats;

  /// [supportsSettings] True, if the bot supports "settings_button_pressed" event
  final bool supportsSettings;

  /// [requestWriteAccess] True, if the user must be asked for the permission to the bot to send them messages
  final bool requestWriteAccess;

  /// [name] Name for the bot in attachment menu
  final String name;

  /// [nameColor] Color to highlight selected name of the bot if appropriate; may be null
  final AttachmentMenuBotColor? nameColor;

  /// [defaultIcon] Default attachment menu icon for the bot in SVG format; may be null
  final File? defaultIcon;

  /// [iosStaticIcon] Attachment menu icon for the bot in SVG format for the official iOS app; may be null
  final File? iosStaticIcon;

  /// [iosAnimatedIcon] Attachment menu icon for the bot in TGS format for the official iOS app; may be null
  final File? iosAnimatedIcon;

  /// [androidIcon] Attachment menu icon for the bot in TGS format for the official Android app; may be null
  final File? androidIcon;

  /// [macosIcon] Attachment menu icon for the bot in TGS format for the official native macOS app; may be null
  final File? macosIcon;

  /// [iconColor] Color to highlight selected icon of the bot if appropriate; may be null
  final AttachmentMenuBotColor? iconColor;

  /// [webAppPlaceholder] Default placeholder for opened Web Apps in SVG format; may be null
  final File? webAppPlaceholder;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory AttachmentMenuBot.fromJson(Map<String, dynamic> json) =>
      AttachmentMenuBot(
        botUserId: json['bot_user_id'],
        supportsSelfChat: json['supports_self_chat'],
        supportsUserChats: json['supports_user_chats'],
        supportsBotChats: json['supports_bot_chats'],
        supportsGroupChats: json['supports_group_chats'],
        supportsChannelChats: json['supports_channel_chats'],
        supportsSettings: json['supports_settings'],
        requestWriteAccess: json['request_write_access'],
        name: json['name'],
        nameColor: json['name_color'] == null
            ? null
            : AttachmentMenuBotColor.fromJson(json['name_color']),
        defaultIcon: json['default_icon'] == null
            ? null
            : File.fromJson(json['default_icon']),
        iosStaticIcon: json['ios_static_icon'] == null
            ? null
            : File.fromJson(json['ios_static_icon']),
        iosAnimatedIcon: json['ios_animated_icon'] == null
            ? null
            : File.fromJson(json['ios_animated_icon']),
        androidIcon: json['android_icon'] == null
            ? null
            : File.fromJson(json['android_icon']),
        macosIcon: json['macos_icon'] == null
            ? null
            : File.fromJson(json['macos_icon']),
        iconColor: json['icon_color'] == null
            ? null
            : AttachmentMenuBotColor.fromJson(json['icon_color']),
        webAppPlaceholder: json['web_app_placeholder'] == null
            ? null
            : File.fromJson(json['web_app_placeholder']),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": botUserId,
      "supports_self_chat": supportsSelfChat,
      "supports_user_chats": supportsUserChats,
      "supports_bot_chats": supportsBotChats,
      "supports_group_chats": supportsGroupChats,
      "supports_channel_chats": supportsChannelChats,
      "supports_settings": supportsSettings,
      "request_write_access": requestWriteAccess,
      "name": name,
      "name_color": nameColor?.toJson(),
      "default_icon": defaultIcon?.toJson(),
      "ios_static_icon": iosStaticIcon?.toJson(),
      "ios_animated_icon": iosAnimatedIcon?.toJson(),
      "android_icon": androidIcon?.toJson(),
      "macos_icon": macosIcon?.toJson(),
      "icon_color": iconColor?.toJson(),
      "web_app_placeholder": webAppPlaceholder?.toJson(),
    };
  }

  AttachmentMenuBot copyWith({
    int? botUserId,
    bool? supportsSelfChat,
    bool? supportsUserChats,
    bool? supportsBotChats,
    bool? supportsGroupChats,
    bool? supportsChannelChats,
    bool? supportsSettings,
    bool? requestWriteAccess,
    String? name,
    AttachmentMenuBotColor? nameColor,
    File? defaultIcon,
    File? iosStaticIcon,
    File? iosAnimatedIcon,
    File? androidIcon,
    File? macosIcon,
    AttachmentMenuBotColor? iconColor,
    File? webAppPlaceholder,
    dynamic extra,
    int? clientId,
  }) =>
      AttachmentMenuBot(
        botUserId: botUserId ?? this.botUserId,
        supportsSelfChat: supportsSelfChat ?? this.supportsSelfChat,
        supportsUserChats: supportsUserChats ?? this.supportsUserChats,
        supportsBotChats: supportsBotChats ?? this.supportsBotChats,
        supportsGroupChats: supportsGroupChats ?? this.supportsGroupChats,
        supportsChannelChats: supportsChannelChats ?? this.supportsChannelChats,
        supportsSettings: supportsSettings ?? this.supportsSettings,
        requestWriteAccess: requestWriteAccess ?? this.requestWriteAccess,
        name: name ?? this.name,
        nameColor: nameColor ?? this.nameColor,
        defaultIcon: defaultIcon ?? this.defaultIcon,
        iosStaticIcon: iosStaticIcon ?? this.iosStaticIcon,
        iosAnimatedIcon: iosAnimatedIcon ?? this.iosAnimatedIcon,
        androidIcon: androidIcon ?? this.androidIcon,
        macosIcon: macosIcon ?? this.macosIcon,
        iconColor: iconColor ?? this.iconColor,
        webAppPlaceholder: webAppPlaceholder ?? this.webAppPlaceholder,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'attachmentMenuBot';

  @override
  String getConstructor() => CONSTRUCTOR;
}
