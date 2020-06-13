part of '../tdapi.dart';

class ChatMembersFilter extends TdObject {
  

  /// Specifies the kind of chat members to return in searchChatMembers
  ChatMembersFilter();

  /// a ChatMembersFilter return type can be :
  /// * ChatMembersFilterContacts
  /// * ChatMembersFilterAdministrators
  /// * ChatMembersFilterMembers
  /// * ChatMembersFilterRestricted
  /// * ChatMembersFilterBanned
  /// * ChatMembersFilterBots
  factory ChatMembersFilter.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatMembersFilterContacts.CONSTRUCTOR:
        return ChatMembersFilterContacts.fromJson(json);
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
    return {
      
    };
  }

  static const CONSTRUCTOR = 'chatMembersFilter';
}

class ChatMembersFilterContacts extends ChatMembersFilter {
  

  /// Returns contacts of the user
  ChatMembersFilterContacts();

  /// Parse from a json
  ChatMembersFilterContacts.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatMembersFilterContacts';
}

class ChatMembersFilterAdministrators extends ChatMembersFilter {
  

  /// Returns the owner and administrators
  ChatMembersFilterAdministrators();

  /// Parse from a json
  ChatMembersFilterAdministrators.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatMembersFilterAdministrators';
}

class ChatMembersFilterMembers extends ChatMembersFilter {
  

  /// Returns all chat members, including restricted chat members
  ChatMembersFilterMembers();

  /// Parse from a json
  ChatMembersFilterMembers.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatMembersFilterMembers';
}

class ChatMembersFilterRestricted extends ChatMembersFilter {
  

  /// Returns users under certain restrictions in the chat; can be used only by administrators in a supergroup
  ChatMembersFilterRestricted();

  /// Parse from a json
  ChatMembersFilterRestricted.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatMembersFilterRestricted';
}

class ChatMembersFilterBanned extends ChatMembersFilter {
  

  /// Returns users banned from the chat; can be used only by administrators in a supergroup or in a channel
  ChatMembersFilterBanned();

  /// Parse from a json
  ChatMembersFilterBanned.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatMembersFilterBanned';
}

class ChatMembersFilterBots extends ChatMembersFilter {
  

  /// Returns bot members of the chat
  ChatMembersFilterBots();

  /// Parse from a json
  ChatMembersFilterBots.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatMembersFilterBots';
}