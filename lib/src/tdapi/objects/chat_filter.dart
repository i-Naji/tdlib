part of '../tdapi.dart';

class ChatFilter extends TdObject {
  String title;
  String iconName;
  List<List<int>> pinnedChatIds;
  List<List<int>> includedChatIds;
  List<List<int>> excludedChatIds;
  bool excludeMuted;
  bool excludeRead;
  bool excludeArchived;
  bool includeContacts;
  bool includeNonContacts;
  bool includeBots;
  bool includeGroups;
  bool includeChannels;
  dynamic extra;

  /// Represents a filter of user chats. 
  /// [title] The title of the filter; 1-12 characters without line feeds. 
  /// [iconName] The icon name for short filter representation. If non-empty, must be one of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work".. If empty, use getChatFilterDefaultIconName to get default icon name for the filter. 
  /// [pinnedChatIds] The chat identifiers of pinned chats in the filtered chat list. 
  /// [includedChatIds] The chat identifiers of always included chats in the filtered chat list. 
  /// [excludedChatIds] The chat identifiers of always excluded chats in the filtered chat list. 
  /// [excludeMuted] True, if the muted chats need to be excluded. 
  /// [excludeRead] True, if read chats need to be excluded. 
  /// [excludeArchived] True, if archived chats need to be excluded. 
  /// [includeContacts] True, if contacts need to be included. 
  /// [includeNonContacts] True, if non-contact users need to be included. 
  /// [includeBots] True, if bots need to be included. 
  /// [includeGroups] True, if basic groups and supergroups need to be included. 
  /// [includeChannels] True, if channels need to be included
  ChatFilter({this.title,
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

  /// Parse from a json
  ChatFilter.fromJson(Map<String, dynamic> json)  {
    this.title = json['title'];
    this.iconName = json['icon_name'];
    this.pinnedChatIds = List<List<int>>.from((json['pinned_chat_ids'] ?? []).map((item) => List<int>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
    this.includedChatIds = List<List<int>>.from((json['included_chat_ids'] ?? []).map((item) => List<int>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
    this.excludedChatIds = List<List<int>>.from((json['excluded_chat_ids'] ?? []).map((item) => List<int>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
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
      "pinned_chat_ids": this.pinnedChatIds.map((i) => i.map((ii) => ii).toList()).toList(),
      "included_chat_ids": this.includedChatIds.map((i) => i.map((ii) => ii).toList()).toList(),
      "excluded_chat_ids": this.excludedChatIds.map((i) => i.map((ii) => ii).toList()).toList(),
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
}