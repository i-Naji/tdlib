part of '../tdapi.dart';

class ToggleSupergroupInvites extends TLFunction {
  int supergroupId;
  bool anyoneCanInvite;
  dynamic extra;

  /// Toggles whether all members of a supergroup can add new members; requires appropriate administrator rights in the supergroup..
  ///[supergroupId] Identifier of the supergroup .
  /// [anyoneCanInvite] New value of anyone_can_invite
  ToggleSupergroupInvites({this.supergroupId, this.anyoneCanInvite});

  /// Parse from a json
  ToggleSupergroupInvites.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'supergroup_id': this.supergroupId,
      'anyone_can_invite': this.anyoneCanInvite,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'toggleSupergroupInvites';

  @override
  String getConstructor() => CONSTRUCTOR;
}
