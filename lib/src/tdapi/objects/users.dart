part of '../tdapi.dart';

class Users extends TdObject {
  int totalCount;
  List<int> userIds;
  dynamic extra;

  /// Represents a list of users. 
  /// [totalCount] Approximate total count of users found . 
  /// [userIds] A list of user identifiers
  Users({this.totalCount,
    this.userIds});

  /// Parse from a json
  Users.fromJson(Map<String, dynamic> json)  {
    this.totalCount = json['total_count'];
    this.userIds = List<int>.from((json['user_ids'] ?? []).map((item) => item).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "user_ids": this.userIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'users';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}