part of '../tdapi.dart';

class GetSupergroup extends TdFunction {
  int supergroupId;
  dynamic extra;

  /// Returns information about a supergroup or a channel by its identifier. This is an offline request if the current user is not a bot. 
  /// [supergroupId] Supergroup or channel identifier
  GetSupergroup({this.supergroupId});

  /// Parse from a json
  GetSupergroup.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getSupergroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}