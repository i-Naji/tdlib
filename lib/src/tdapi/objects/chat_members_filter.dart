part of '../tdapi.dart';

class ChatMembersFilter implements TdObject {
  /// Specifies the kind of chat members to return in searchChatMembers
  ChatMembersFilter();

  /// a ChatMembersFilter return type can be :
  /// * ChatMembersFilterAdministrators
  /// * ChatMembersFilterMembers
  /// * ChatMembersFilterRestricted
  /// * ChatMembersFilterBanned
  /// * ChatMembersFilterBots
  factory ChatMembersFilter.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case ChatMembersFilterAdministrators.CONSTRUCTOR:
        return ChatMembersFilterAdministrators.fromJson(json);
      case ChatMembersFilterMembers.CONSTRUCTOR:
        return ChatMembersFilterMembers.fromJson(json);
      case ChatMembersFilterRestricted.CONSTRUCTOR:
        return ChatMembersFilterRestricted.fromJson(json);
      case ChatMembersFilterBanned.CONSTRUCTOR:
        return ChatMembersFilterBanned.fromJson(json);
      case ChatMembersFilterBots.CONSTRUCTOR:
        return ChatMembersFilterBots.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "chatMembersFilter";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterAdministrators implements ChatMembersFilter {
  /// Returns the creator and administrators.
  ///
  ChatMembersFilterAdministrators();

  /// Parse from a json
  ChatMembersFilterAdministrators.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "chatMembersFilterAdministrators";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterMembers implements ChatMembersFilter {
  /// Returns all chat members, including restricted chat members.
  ///
  ChatMembersFilterMembers();

  /// Parse from a json
  ChatMembersFilterMembers.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "chatMembersFilterMembers";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterRestricted implements ChatMembersFilter {
  /// Returns users under certain restrictions in the chat; can be used only by administrators in a supergroup.
  ///
  ChatMembersFilterRestricted();

  /// Parse from a json
  ChatMembersFilterRestricted.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "chatMembersFilterRestricted";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterBanned implements ChatMembersFilter {
  /// Returns users banned from the chat; can be used only by administrators in a supergroup or in a channel.
  ///
  ChatMembersFilterBanned();

  /// Parse from a json
  ChatMembersFilterBanned.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "chatMembersFilterBanned";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatMembersFilterBots implements ChatMembersFilter {
  /// Returns bot members of the chat.
  ///
  ChatMembersFilterBots();

  /// Parse from a json
  ChatMembersFilterBots.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "chatMembersFilterBots";

  @override
  String getConstructor() => CONSTRUCTOR;
}
