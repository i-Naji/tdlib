part of '../tdapi.dart';

class BotInfo extends TdObject {
  /// Contains information about a bot
  const BotInfo({
    required this.shortDescription,
    required this.description,
    this.photo,
    this.animation,
    this.menuButton,
    required this.commands,
    this.defaultGroupAdministratorRights,
    this.defaultChannelAdministratorRights,
    this.editCommandsLink,
    this.editDescriptionLink,
    this.editDescriptionMediaLink,
    this.editSettingsLink,
  });

  /// [shortDescription] The text that is shown on the bot's profile page and is sent together with the link when users share the bot
  final String shortDescription;

  /// [description] The text shown in the chat with the bot if the chat is empty
  final String description;

  /// [photo] Photo shown in the chat with the bot if the chat is empty; may be null
  final Photo? photo;

  /// [animation] Animation shown in the chat with the bot if the chat is empty; may be null
  final Animation? animation;

  /// [menuButton] Information about a button to show instead of the bot commands menu button; may be null if ordinary bot commands menu must be shown
  final BotMenuButton? menuButton;

  /// [commands] List of the bot commands
  final List<BotCommand> commands;

  /// [defaultGroupAdministratorRights] Default administrator rights for adding the bot to basic group and supergroup chats; may be null
  final ChatAdministratorRights? defaultGroupAdministratorRights;

  /// [defaultChannelAdministratorRights] Default administrator rights for adding the bot to channels; may be null
  final ChatAdministratorRights? defaultChannelAdministratorRights;

  /// [editCommandsLink] The internal link, which can be used to edit bot commands; may be null
  final InternalLinkType? editCommandsLink;

  /// [editDescriptionLink] The internal link, which can be used to edit bot description; may be null
  final InternalLinkType? editDescriptionLink;

  /// [editDescriptionMediaLink] The internal link, which can be used to edit the photo or animation shown in the chat with the bot if the chat is empty; may be null
  final InternalLinkType? editDescriptionMediaLink;

  /// [editSettingsLink] The internal link, which can be used to edit bot settings; may be null
  final InternalLinkType? editSettingsLink;

  /// Parse from a json
  factory BotInfo.fromJson(Map<String, dynamic> json) => BotInfo(
        shortDescription: json['short_description'],
        description: json['description'],
        photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
        animation: json['animation'] == null
            ? null
            : Animation.fromJson(json['animation']),
        menuButton: json['menu_button'] == null
            ? null
            : BotMenuButton.fromJson(json['menu_button']),
        commands: List<BotCommand>.from((json['commands'] ?? [])
            .map((item) => BotCommand.fromJson(item))
            .toList()),
        defaultGroupAdministratorRights:
            json['default_group_administrator_rights'] == null
                ? null
                : ChatAdministratorRights.fromJson(
                    json['default_group_administrator_rights']),
        defaultChannelAdministratorRights:
            json['default_channel_administrator_rights'] == null
                ? null
                : ChatAdministratorRights.fromJson(
                    json['default_channel_administrator_rights']),
        editCommandsLink: json['edit_commands_link'] == null
            ? null
            : InternalLinkType.fromJson(json['edit_commands_link']),
        editDescriptionLink: json['edit_description_link'] == null
            ? null
            : InternalLinkType.fromJson(json['edit_description_link']),
        editDescriptionMediaLink: json['edit_description_media_link'] == null
            ? null
            : InternalLinkType.fromJson(json['edit_description_media_link']),
        editSettingsLink: json['edit_settings_link'] == null
            ? null
            : InternalLinkType.fromJson(json['edit_settings_link']),
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "short_description": shortDescription,
      "description": description,
      "photo": photo?.toJson(),
      "animation": animation?.toJson(),
      "menu_button": menuButton?.toJson(),
      "commands": commands.map((i) => i.toJson()).toList(),
      "default_group_administrator_rights":
          defaultGroupAdministratorRights?.toJson(),
      "default_channel_administrator_rights":
          defaultChannelAdministratorRights?.toJson(),
      "edit_commands_link": editCommandsLink?.toJson(),
      "edit_description_link": editDescriptionLink?.toJson(),
      "edit_description_media_link": editDescriptionMediaLink?.toJson(),
      "edit_settings_link": editSettingsLink?.toJson(),
    };
  }

  BotInfo copyWith({
    String? shortDescription,
    String? description,
    Photo? photo,
    Animation? animation,
    BotMenuButton? menuButton,
    List<BotCommand>? commands,
    ChatAdministratorRights? defaultGroupAdministratorRights,
    ChatAdministratorRights? defaultChannelAdministratorRights,
    InternalLinkType? editCommandsLink,
    InternalLinkType? editDescriptionLink,
    InternalLinkType? editDescriptionMediaLink,
    InternalLinkType? editSettingsLink,
  }) =>
      BotInfo(
        shortDescription: shortDescription ?? this.shortDescription,
        description: description ?? this.description,
        photo: photo ?? this.photo,
        animation: animation ?? this.animation,
        menuButton: menuButton ?? this.menuButton,
        commands: commands ?? this.commands,
        defaultGroupAdministratorRights: defaultGroupAdministratorRights ??
            this.defaultGroupAdministratorRights,
        defaultChannelAdministratorRights: defaultChannelAdministratorRights ??
            this.defaultChannelAdministratorRights,
        editCommandsLink: editCommandsLink ?? this.editCommandsLink,
        editDescriptionLink: editDescriptionLink ?? this.editDescriptionLink,
        editDescriptionMediaLink:
            editDescriptionMediaLink ?? this.editDescriptionMediaLink,
        editSettingsLink: editSettingsLink ?? this.editSettingsLink,
      );

  static const CONSTRUCTOR = 'botInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
