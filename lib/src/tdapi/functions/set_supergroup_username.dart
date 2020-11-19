part of '../tdapi.dart';

class SetSupergroupUsername extends TdFunction {
  /// Changes the username of a supergroup or channel, requires owner privileges in the supergroup or channel
  SetSupergroupUsername({this.supergroupId, this.username});

  /// [supergroupId] Identifier of the supergroup or channel
  int supergroupId;

  /// [username] New value of the username. Use an empty string to remove the username
  String username;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetSupergroupUsername.fromJson(Map<String, dynamic> json);

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

  @override
  String getConstructor() => CONSTRUCTOR;
}
