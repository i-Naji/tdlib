part of '../tdapi.dart';

class SupergroupMembersFilter extends TdObject {
  /// Specifies the kind of chat members to return in getSupergroupMembers
  SupergroupMembersFilter();

  /// a SupergroupMembersFilter return type can be :
  /// * SupergroupMembersFilterRecent
  /// * SupergroupMembersFilterContacts
  /// * SupergroupMembersFilterAdministrators
  /// * SupergroupMembersFilterSearch
  /// * SupergroupMembersFilterRestricted
  /// * SupergroupMembersFilterBanned
  /// * SupergroupMembersFilterMention
  /// * SupergroupMembersFilterBots
  factory SupergroupMembersFilter.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
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
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'supergroupMembersFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterRecent extends SupergroupMembersFilter {
  /// Returns recently active users in reverse chronological order
  SupergroupMembersFilterRecent();

  /// Parse from a json
  SupergroupMembersFilterRecent.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'supergroupMembersFilterRecent';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterContacts extends SupergroupMembersFilter {
  /// Returns contacts of the user, which are members of the supergroup or channel
  SupergroupMembersFilterContacts({this.query});

  /// [query] Query to search for
  String query;

  /// Parse from a json
  SupergroupMembersFilterContacts.fromJson(Map<String, dynamic> json) {
    this.query = json['query'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
    };
  }

  static const CONSTRUCTOR = 'supergroupMembersFilterContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterAdministrators extends SupergroupMembersFilter {
  /// Returns the owner and administrators
  SupergroupMembersFilterAdministrators();

  /// Parse from a json
  SupergroupMembersFilterAdministrators.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'supergroupMembersFilterAdministrators';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterSearch extends SupergroupMembersFilter {
  /// Used to search for supergroup or channel members via a (string) query
  SupergroupMembersFilterSearch({this.query});

  /// [query] Query to search for
  String query;

  /// Parse from a json
  SupergroupMembersFilterSearch.fromJson(Map<String, dynamic> json) {
    this.query = json['query'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
    };
  }

  static const CONSTRUCTOR = 'supergroupMembersFilterSearch';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterRestricted extends SupergroupMembersFilter {
  /// Returns restricted supergroup members; can be used only by administrators
  SupergroupMembersFilterRestricted({this.query});

  /// [query] Query to search for
  String query;

  /// Parse from a json
  SupergroupMembersFilterRestricted.fromJson(Map<String, dynamic> json) {
    this.query = json['query'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
    };
  }

  static const CONSTRUCTOR = 'supergroupMembersFilterRestricted';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterBanned extends SupergroupMembersFilter {
  /// Returns users banned from the supergroup or channel; can be used only by administrators
  SupergroupMembersFilterBanned({this.query});

  /// [query] Query to search for
  String query;

  /// Parse from a json
  SupergroupMembersFilterBanned.fromJson(Map<String, dynamic> json) {
    this.query = json['query'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
    };
  }

  static const CONSTRUCTOR = 'supergroupMembersFilterBanned';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterMention extends SupergroupMembersFilter {
  /// Returns users which can be mentioned in the supergroup
  SupergroupMembersFilterMention({this.query, this.messageThreadId});

  /// [query] Query to search for
  String query;

  /// [messageThreadId] If non-zero, the identifier of the current message thread
  int messageThreadId;

  /// Parse from a json
  SupergroupMembersFilterMention.fromJson(Map<String, dynamic> json) {
    this.query = json['query'];
    this.messageThreadId = json['message_thread_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
      "message_thread_id": this.messageThreadId,
    };
  }

  static const CONSTRUCTOR = 'supergroupMembersFilterMention';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterBots extends SupergroupMembersFilter {
  /// Returns bot members of the supergroup or channel
  SupergroupMembersFilterBots();

  /// Parse from a json
  SupergroupMembersFilterBots.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'supergroupMembersFilterBots';

  @override
  String getConstructor() => CONSTRUCTOR;
}
