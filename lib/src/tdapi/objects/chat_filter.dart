part of '../tdapi.dart';

class ChatFilter extends TdObject {
  /// Represents a filter of user chats
  ChatFilter(
      {this.title,
      this.iconName,
      this.pinnedChatIds,
      this.includedChatIds,
      this.excludedChatIds,
      this.excludeMuted,
      this.excludeRead,
      this.excludeArchived,
      this.includeContacts,
      this.includeNonContacts,
      this.includeBots,
      this.includeGroups,
      this.includeChannels});

  /// [title] The title of the filter; 1-12 characters without line feeds
  String title;

  /// [iconName] The icon name for short filter representation. If non-empty, must be one of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work".. If empty, use getChatFilterDefaultIconName to get default icon name for the filter
  String iconName;

  /// [pinnedChatIds] The chat identifiers of pinned chats in the filtered chat list
  List<int> pinnedChatIds;

  /// [includedChatIds] The chat identifiers of always included chats in the filtered chat list
  List<int> includedChatIds;

  /// [excludedChatIds] The chat identifiers of always excluded chats in the filtered chat list
  List<int> excludedChatIds;

  /// [excludeMuted] True, if muted chats need to be excluded
  bool excludeMuted;

  /// [excludeRead] True, if read chats need to be excluded
  bool excludeRead;

  /// [excludeArchived] True, if archived chats need to be excluded
  bool excludeArchived;

  /// [includeContacts] True, if contacts need to be included
  bool includeContacts;

  /// [includeNonContacts] True, if non-contact users need to be included
  bool includeNonContacts;

  /// [includeBots] True, if bots need to be included
  bool includeBots;

  /// [includeGroups] True, if basic groups and supergroups need to be included
  bool includeGroups;

  /// [includeChannels] True, if channels need to be included
  bool includeChannels;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ChatFilter.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
    this.iconName = json['icon_name'];
    this.pinnedChatIds = List<int>.from(
        (json['pinned_chat_ids'] ?? []).map((item) => item).toList());
    this.includedChatIds = List<int>.from(
        (json['included_chat_ids'] ?? []).map((item) => item).toList());
    this.excludedChatIds = List<int>.from(
        (json['excluded_chat_ids'] ?? []).map((item) => item).toList());
    this.excludeMuted = json['exclude_muted'];
    this.excludeRead = json['exclude_read'];
    this.excludeArchived = json['exclude_archived'];
    this.includeContacts = json['include_contacts'];
    this.includeNonContacts = json['include_non_contacts'];
    this.includeBots = json['include_bots'];
    this.includeGroups = json['include_groups'];
    this.includeChannels = json['include_channels'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "icon_name": this.iconName,
      "pinned_chat_ids": this.pinnedChatIds.map((i) => i).toList(),
      "included_chat_ids": this.includedChatIds.map((i) => i).toList(),
      "excluded_chat_ids": this.excludedChatIds.map((i) => i).toList(),
      "exclude_muted": this.excludeMuted,
      "exclude_read": this.excludeRead,
      "exclude_archived": this.excludeArchived,
      "include_contacts": this.includeContacts,
      "include_non_contacts": this.includeNonContacts,
      "include_bots": this.includeBots,
      "include_groups": this.includeGroups,
      "include_channels": this.includeChannels,
    };
  }

  static const CONSTRUCTOR = 'chatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}
