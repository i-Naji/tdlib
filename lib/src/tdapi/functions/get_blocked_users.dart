part of '../tdapi.dart';

class GetBlockedUsers extends TdFunction {

  /// Returns users that were blocked by the current user
  GetBlockedUsers({this.offset,
    this.limit});

  /// [offset] Number of users to skip in the result; must be non-negative 
  int offset;

  /// [limit] The maximum number of users to return; up to 100
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetBlockedUsers.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "offset": this.offset,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getBlockedUsers';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}