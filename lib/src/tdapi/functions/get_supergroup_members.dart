part of '../tdapi.dart';

class GetSupergroupMembers extends TdFunction {

  /// Returns information about members or banned users in a supergroup or channel. Can be used only if supergroupFullInfo.can_get_members == true; additionally, administrator privileges may be required for some filters
  const GetSupergroupMembers({
    required this.supergroupId,
    this.filter,
    required this.offset,
    required this.limit,
  });
  
  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  /// [filter] The type of users to return; pass null to use supergroupMembersFilterRecent
  final SupergroupMembersFilter? filter;

  /// [offset] Number of users to skip 
  final int offset;

  /// [limit] The maximum number of users be returned; up to 200
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "filter": filter?.toJson(),
      "offset": offset,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetSupergroupMembers copyWith({
    int? supergroupId,
    SupergroupMembersFilter? filter,
    int? offset,
    int? limit,
  }) => GetSupergroupMembers(
    supergroupId: supergroupId ?? this.supergroupId,
    filter: filter ?? this.filter,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
  );

  static const CONSTRUCTOR = 'getSupergroupMembers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
