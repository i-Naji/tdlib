part of '../tdapi.dart';

class Users extends TdObject {
  int totalCount;
  List<List<int>> userIds;
  dynamic extra;

  /// Represents a list of users. 
  /// [totalCount] Approximate total count of users found . 
  /// [userIds] A list of user identifiers
  Users({this.totalCount,
    this.userIds});

  /// Parse from a json
  Users.fromJson(Map<String, dynamic> json)  {
    this.totalCount = json['total_count'];
    this.userIds = List<List<int>>.from((json['user_ids'] ?? []).map((item) => List<int>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "user_ids": this.userIds.map((i) => i.map((ii) => ii).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'users';
}