part of '../tdapi.dart';

class SupergroupMembersFilter extends TdObject {

  /// Specifies the kind of chat members to return in getSupergroupMembers
  const SupergroupMembersFilter();
  
  /// a SupergroupMembersFilter return type can be :
  /// * [SupergroupMembersFilterRecent]
  /// * [SupergroupMembersFilterContacts]
  /// * [SupergroupMembersFilterAdministrators]
  /// * [SupergroupMembersFilterSearch]
  /// * [SupergroupMembersFilterRestricted]
  /// * [SupergroupMembersFilterBanned]
  /// * [SupergroupMembersFilterMention]
  /// * [SupergroupMembersFilterBots]
  factory SupergroupMembersFilter.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case SupergroupMembersFilterRecent.CONSTRUCTOR:
        return SupergroupMembersFilterRecent.fromJson(json);
      case SupergroupMembersFilterContacts.CONSTRUCTOR:
        return SupergroupMembersFilterContacts.fromJson(json);
      case SupergroupMembersFilterAdministrators.CONSTRUCTOR:
        return SupergroupMembersFilterAdministrators.fromJson(json);
      case SupergroupMembersFilterSearch.CONSTRUCTOR:
        return SupergroupMembersFilterSearch.fromJson(json);
      case SupergroupMembersFilterRestricted.CONSTRUCTOR:
        return SupergroupMembersFilterRestricted.fromJson(json);
      case SupergroupMembersFilterBanned.CONSTRUCTOR:
        return SupergroupMembersFilterBanned.fromJson(json);
      case SupergroupMembersFilterMention.CONSTRUCTOR:
        return SupergroupMembersFilterMention.fromJson(json);
      case SupergroupMembersFilterBots.CONSTRUCTOR:
        return SupergroupMembersFilterBots.fromJson(json);
      default:
        return const SupergroupMembersFilter();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  SupergroupMembersFilter copyWith() => const SupergroupMembersFilter();

  static const CONSTRUCTOR = 'supergroupMembersFilter';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SupergroupMembersFilterRecent extends SupergroupMembersFilter {

  /// Returns recently active users in reverse chronological order
  const SupergroupMembersFilterRecent();
  
  /// Parse from a json
  factory SupergroupMembersFilterRecent.fromJson(Map<String, dynamic> json) => const SupergroupMembersFilterRecent();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  SupergroupMembersFilterRecent copyWith() => const SupergroupMembersFilterRecent();

  static const CONSTRUCTOR = 'supergroupMembersFilterRecent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SupergroupMembersFilterContacts extends SupergroupMembersFilter {

  /// Returns contacts of the user, which are members of the supergroup or channel
  const SupergroupMembersFilterContacts({
    required this.query,
  });
  
  /// [query] Query to search for
  final String query;
  
  /// Parse from a json
  factory SupergroupMembersFilterContacts.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterContacts(
    query: json['query'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "query": query,
    };
  }
  
  @override
  SupergroupMembersFilterContacts copyWith({
    String? query,
  }) => SupergroupMembersFilterContacts(
    query: query ?? this.query,
  );

  static const CONSTRUCTOR = 'supergroupMembersFilterContacts';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SupergroupMembersFilterAdministrators extends SupergroupMembersFilter {

  /// Returns the owner and administrators
  const SupergroupMembersFilterAdministrators();
  
  /// Parse from a json
  factory SupergroupMembersFilterAdministrators.fromJson(Map<String, dynamic> json) => const SupergroupMembersFilterAdministrators();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  SupergroupMembersFilterAdministrators copyWith() => const SupergroupMembersFilterAdministrators();

  static const CONSTRUCTOR = 'supergroupMembersFilterAdministrators';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SupergroupMembersFilterSearch extends SupergroupMembersFilter {

  /// Used to search for supergroup or channel members via a (string) query
  const SupergroupMembersFilterSearch({
    required this.query,
  });
  
  /// [query] Query to search for
  final String query;
  
  /// Parse from a json
  factory SupergroupMembersFilterSearch.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterSearch(
    query: json['query'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "query": query,
    };
  }
  
  @override
  SupergroupMembersFilterSearch copyWith({
    String? query,
  }) => SupergroupMembersFilterSearch(
    query: query ?? this.query,
  );

  static const CONSTRUCTOR = 'supergroupMembersFilterSearch';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SupergroupMembersFilterRestricted extends SupergroupMembersFilter {

  /// Returns restricted supergroup members; can be used only by administrators
  const SupergroupMembersFilterRestricted({
    required this.query,
  });
  
  /// [query] Query to search for
  final String query;
  
  /// Parse from a json
  factory SupergroupMembersFilterRestricted.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterRestricted(
    query: json['query'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "query": query,
    };
  }
  
  @override
  SupergroupMembersFilterRestricted copyWith({
    String? query,
  }) => SupergroupMembersFilterRestricted(
    query: query ?? this.query,
  );

  static const CONSTRUCTOR = 'supergroupMembersFilterRestricted';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SupergroupMembersFilterBanned extends SupergroupMembersFilter {

  /// Returns users banned from the supergroup or channel; can be used only by administrators
  const SupergroupMembersFilterBanned({
    required this.query,
  });
  
  /// [query] Query to search for
  final String query;
  
  /// Parse from a json
  factory SupergroupMembersFilterBanned.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterBanned(
    query: json['query'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "query": query,
    };
  }
  
  @override
  SupergroupMembersFilterBanned copyWith({
    String? query,
  }) => SupergroupMembersFilterBanned(
    query: query ?? this.query,
  );

  static const CONSTRUCTOR = 'supergroupMembersFilterBanned';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SupergroupMembersFilterMention extends SupergroupMembersFilter {

  /// Returns users which can be mentioned in the supergroup
  const SupergroupMembersFilterMention({
    required this.query,
    required this.messageThreadId,
  });
  
  /// [query] Query to search for 
  final String query;

  /// [messageThreadId] If non-zero, the identifier of the current message thread
  final int messageThreadId;
  
  /// Parse from a json
  factory SupergroupMembersFilterMention.fromJson(Map<String, dynamic> json) => SupergroupMembersFilterMention(
    query: json['query'],
    messageThreadId: json['message_thread_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "query": query,
      "message_thread_id": messageThreadId,
    };
  }
  
  @override
  SupergroupMembersFilterMention copyWith({
    String? query,
    int? messageThreadId,
  }) => SupergroupMembersFilterMention(
    query: query ?? this.query,
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

  static const CONSTRUCTOR = 'supergroupMembersFilterMention';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SupergroupMembersFilterBots extends SupergroupMembersFilter {

  /// Returns bot members of the supergroup or channel
  const SupergroupMembersFilterBots();
  
  /// Parse from a json
  factory SupergroupMembersFilterBots.fromJson(Map<String, dynamic> json) => const SupergroupMembersFilterBots();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  SupergroupMembersFilterBots copyWith() => const SupergroupMembersFilterBots();

  static const CONSTRUCTOR = 'supergroupMembersFilterBots';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
