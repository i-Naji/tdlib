part of '../tdapi.dart';

class GetSupergroupMembers extends TdFunction {
  int supergroupId;
  var filter;
  int offset;
  int limit;
  dynamic extra;

  /// Returns information about members or banned users in a supergroup or channel. Can be used only if SupergroupFullInfo.can_get_members.
  ///[filter] The type of users to return. By default, supergroupMembersRecent .
  /// [offset] Number of users to skip .
  /// [limit] The maximum number of users be returned; up to 200
  GetSupergroupMembers(
      {this.supergroupId, this.filter, this.offset, this.limit});

  /// Parse from a json
  GetSupergroupMembers.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "filter": this.filter.toJson(),
      "offset": this.offset,
      "limit": this.limit,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "getSupergroupMembers";

  @override
  String getConstructor() => CONSTRUCTOR;
}
