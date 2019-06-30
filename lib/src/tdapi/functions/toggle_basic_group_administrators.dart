part of '../tdapi.dart';

class ToggleBasicGroupAdministrators extends TLFunction {
  int basicGroupId;
  bool everyoneIsAdministrator;
  dynamic extra;

  /// Toggles the "All members are admins" setting in basic groups; requires creator privileges in the group.
  ///[basicGroupId] Identifier of the basic group .
  /// [everyoneIsAdministrator] New value of everyone_is_administrator
  ToggleBasicGroupAdministrators(
      {this.basicGroupId, this.everyoneIsAdministrator});

  /// Parse from a json
  ToggleBasicGroupAdministrators.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'basic_group_id': this.basicGroupId,
      'everyone_is_administrator': this.everyoneIsAdministrator,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'toggleBasicGroupAdministrators';

  @override
  String getConstructor() => CONSTRUCTOR;
}
