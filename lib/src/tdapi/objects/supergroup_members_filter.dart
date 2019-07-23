part of '../tdapi.dart';

class SupergroupMembersFilter implements TdObject {
  /// Specifies the kind of chat members to return in getSupergroupMembers
  SupergroupMembersFilter();

  /// a SupergroupMembersFilter return type can be :
  /// * SupergroupMembersFilterRecent
  /// * SupergroupMembersFilterAdministrators
  /// * SupergroupMembersFilterSearch
  /// * SupergroupMembersFilterRestricted
  /// * SupergroupMembersFilterBanned
  /// * SupergroupMembersFilterBots
  factory SupergroupMembersFilter.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case SupergroupMembersFilterRecent.CONSTRUCTOR:
        return SupergroupMembersFilterRecent.fromJson(json);
      case SupergroupMembersFilterAdministrators.CONSTRUCTOR:
        return SupergroupMembersFilterAdministrators.fromJson(json);
      case SupergroupMembersFilterSearch.CONSTRUCTOR:
        return SupergroupMembersFilterSearch.fromJson(json);
      case SupergroupMembersFilterRestricted.CONSTRUCTOR:
        return SupergroupMembersFilterRestricted.fromJson(json);
      case SupergroupMembersFilterBanned.CONSTRUCTOR:
        return SupergroupMembersFilterBanned.fromJson(json);
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

  static const String CONSTRUCTOR = "supergroupMembersFilter";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterRecent implements SupergroupMembersFilter {
  /// Returns recently active users in reverse chronological order.
  ///
  SupergroupMembersFilterRecent();

  /// Parse from a json
  SupergroupMembersFilterRecent.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "supergroupMembersFilterRecent";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterAdministrators implements SupergroupMembersFilter {
  /// Returns the creator and administrators.
  ///
  SupergroupMembersFilterAdministrators();

  /// Parse from a json
  SupergroupMembersFilterAdministrators.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "supergroupMembersFilterAdministrators";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterSearch implements SupergroupMembersFilter {
  String query;

  /// Used to search for supergroup or channel members via a (string) query.
  ///[query] Query to search for
  SupergroupMembersFilterSearch({this.query});

  /// Parse from a json
  SupergroupMembersFilterSearch.fromJson(Map<String, dynamic> json) {
    this.query = json['query'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "query": this.query};
  }

  static const String CONSTRUCTOR = "supergroupMembersFilterSearch";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterRestricted implements SupergroupMembersFilter {
  String query;

  /// Returns restricted supergroup members; can be used only by administrators.
  ///[query] Query to search for
  SupergroupMembersFilterRestricted({this.query});

  /// Parse from a json
  SupergroupMembersFilterRestricted.fromJson(Map<String, dynamic> json) {
    this.query = json['query'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "query": this.query};
  }

  static const String CONSTRUCTOR = "supergroupMembersFilterRestricted";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterBanned implements SupergroupMembersFilter {
  String query;

  /// Returns users banned from the supergroup or channel; can be used only by administrators.
  ///[query] Query to search for
  SupergroupMembersFilterBanned({this.query});

  /// Parse from a json
  SupergroupMembersFilterBanned.fromJson(Map<String, dynamic> json) {
    this.query = json['query'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "query": this.query};
  }

  static const String CONSTRUCTOR = "supergroupMembersFilterBanned";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SupergroupMembersFilterBots implements SupergroupMembersFilter {
  /// Returns bot members of the supergroup or channel.
  ///
  SupergroupMembersFilterBots();

  /// Parse from a json
  SupergroupMembersFilterBots.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "supergroupMembersFilterBots";

  @override
  String getConstructor() => CONSTRUCTOR;
}
