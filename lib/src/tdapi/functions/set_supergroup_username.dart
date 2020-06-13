part of '../tdapi.dart';

class SetSupergroupUsername extends TdFunction {
  int supergroupId;
  String username;
  dynamic extra;

  /// Changes the username of a supergroup or channel, requires owner privileges in the supergroup or channel. 
  /// [supergroupId] Identifier of the supergroup or channel . 
  /// [username] New value of the username. Use an empty string to remove the username
  SetSupergroupUsername({this.supergroupId,
    this.username});

  /// Parse from a json
  SetSupergroupUsername.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "username": this.username,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setSupergroupUsername';
}