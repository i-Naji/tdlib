part of '../tdapi.dart';

class GetSupergroupMembers extends TdFunction {
  /// Returns information about members or banned users in a supergroup or channel. Can be used only if SupergroupFullInfo.can_get_members == true; additionally, administrator privileges may be required for some filters
  GetSupergroupMembers(
      {this.supergroupId, this.filter, this.offset, this.limit});

  /// [supergroupId] Identifier of the supergroup or channel
  int supergroupId;

  /// [filter] The type of users to return. By default, supergroupMembersFilterRecent
  SupergroupMembersFilter filter;

  /// [offset] Number of users to skip
  int offset;

  /// [limit] The maximum number of users be returned; up to 200
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetSupergroupMembers.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "filter": this.filter == null ? null : this.filter.toJson(),
      "offset": this.offset,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getSupergroupMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
