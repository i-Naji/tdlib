part of '../tdapi.dart';

class TopChatCategory extends TdObject {

  /// Represents the categories of chats for which a list of frequently used chats can be retrieved
  const TopChatCategory();
  
  /// a TopChatCategory return type can be :
  /// * [TopChatCategoryUsers]
  /// * [TopChatCategoryBots]
  /// * [TopChatCategoryGroups]
  /// * [TopChatCategoryChannels]
  /// * [TopChatCategoryInlineBots]
  /// * [TopChatCategoryCalls]
  /// * [TopChatCategoryForwardChats]
  factory TopChatCategory.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case TopChatCategoryUsers.CONSTRUCTOR:
        return TopChatCategoryUsers.fromJson(json);
      case TopChatCategoryBots.CONSTRUCTOR:
        return TopChatCategoryBots.fromJson(json);
      case TopChatCategoryGroups.CONSTRUCTOR:
        return TopChatCategoryGroups.fromJson(json);
      case TopChatCategoryChannels.CONSTRUCTOR:
        return TopChatCategoryChannels.fromJson(json);
      case TopChatCategoryInlineBots.CONSTRUCTOR:
        return TopChatCategoryInlineBots.fromJson(json);
      case TopChatCategoryCalls.CONSTRUCTOR:
        return TopChatCategoryCalls.fromJson(json);
      case TopChatCategoryForwardChats.CONSTRUCTOR:
        return TopChatCategoryForwardChats.fromJson(json);
      default:
        return const TopChatCategory();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  TopChatCategory copyWith() => const TopChatCategory();

  static const CONSTRUCTOR = 'topChatCategory';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TopChatCategoryUsers extends TopChatCategory {

  /// A category containing frequently used private chats with non-bot users
  const TopChatCategoryUsers();
  
  /// Parse from a json
  factory TopChatCategoryUsers.fromJson(Map<String, dynamic> json) => const TopChatCategoryUsers();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  TopChatCategoryUsers copyWith() => const TopChatCategoryUsers();

  static const CONSTRUCTOR = 'topChatCategoryUsers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TopChatCategoryBots extends TopChatCategory {

  /// A category containing frequently used private chats with bot users
  const TopChatCategoryBots();
  
  /// Parse from a json
  factory TopChatCategoryBots.fromJson(Map<String, dynamic> json) => const TopChatCategoryBots();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  TopChatCategoryBots copyWith() => const TopChatCategoryBots();

  static const CONSTRUCTOR = 'topChatCategoryBots';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TopChatCategoryGroups extends TopChatCategory {

  /// A category containing frequently used basic groups and supergroups
  const TopChatCategoryGroups();
  
  /// Parse from a json
  factory TopChatCategoryGroups.fromJson(Map<String, dynamic> json) => const TopChatCategoryGroups();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  TopChatCategoryGroups copyWith() => const TopChatCategoryGroups();

  static const CONSTRUCTOR = 'topChatCategoryGroups';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TopChatCategoryChannels extends TopChatCategory {

  /// A category containing frequently used channels
  const TopChatCategoryChannels();
  
  /// Parse from a json
  factory TopChatCategoryChannels.fromJson(Map<String, dynamic> json) => const TopChatCategoryChannels();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  TopChatCategoryChannels copyWith() => const TopChatCategoryChannels();

  static const CONSTRUCTOR = 'topChatCategoryChannels';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TopChatCategoryInlineBots extends TopChatCategory {

  /// A category containing frequently used chats with inline bots sorted by their usage in inline mode
  const TopChatCategoryInlineBots();
  
  /// Parse from a json
  factory TopChatCategoryInlineBots.fromJson(Map<String, dynamic> json) => const TopChatCategoryInlineBots();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  TopChatCategoryInlineBots copyWith() => const TopChatCategoryInlineBots();

  static const CONSTRUCTOR = 'topChatCategoryInlineBots';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TopChatCategoryCalls extends TopChatCategory {

  /// A category containing frequently used chats used for calls
  const TopChatCategoryCalls();
  
  /// Parse from a json
  factory TopChatCategoryCalls.fromJson(Map<String, dynamic> json) => const TopChatCategoryCalls();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  TopChatCategoryCalls copyWith() => const TopChatCategoryCalls();

  static const CONSTRUCTOR = 'topChatCategoryCalls';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class TopChatCategoryForwardChats extends TopChatCategory {

  /// A category containing frequently used chats used to forward messages
  const TopChatCategoryForwardChats();
  
  /// Parse from a json
  factory TopChatCategoryForwardChats.fromJson(Map<String, dynamic> json) => const TopChatCategoryForwardChats();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  TopChatCategoryForwardChats copyWith() => const TopChatCategoryForwardChats();

  static const CONSTRUCTOR = 'topChatCategoryForwardChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
