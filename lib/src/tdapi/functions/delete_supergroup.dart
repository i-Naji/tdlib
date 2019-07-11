part of '../tdapi.dart';

class DeleteSupergroup extends TLFunction {
  int supergroupId;
  dynamic extra;

  /// Deletes a supergroup or channel along with all messages in the corresponding chat. This will release the supergroup or channel username and remove all members; requires creator privileges in the supergroup or channel. Chats with more than 1000 members can't be deleted using this method.
  ///[supergroupId] Identifier of the supergroup or channel
  DeleteSupergroup({this.supergroupId});

  /// Parse from a json
  DeleteSupergroup.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "deleteSupergroup";

  @override
  String getConstructor() => CONSTRUCTOR;
}
