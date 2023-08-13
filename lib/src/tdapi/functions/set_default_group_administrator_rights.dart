part of '../tdapi.dart';

class SetDefaultGroupAdministratorRights extends TdFunction {
  /// Sets default administrator rights for adding the bot to basic group and supergroup chats; for bots only
  const SetDefaultGroupAdministratorRights({
    this.defaultGroupAdministratorRights,
  });

  /// [defaultGroupAdministratorRights] Default administrator rights for adding the bot to basic group and supergroup chats; pass null to remove default rights
  final ChatAdministratorRights? defaultGroupAdministratorRights;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "default_group_administrator_rights":
          defaultGroupAdministratorRights?.toJson(),
      "@extra": extra,
    };
  }

  SetDefaultGroupAdministratorRights copyWith({
    ChatAdministratorRights? defaultGroupAdministratorRights,
  }) =>
      SetDefaultGroupAdministratorRights(
        defaultGroupAdministratorRights: defaultGroupAdministratorRights ??
            this.defaultGroupAdministratorRights,
      );

  static const CONSTRUCTOR = 'setDefaultGroupAdministratorRights';

  @override
  String getConstructor() => CONSTRUCTOR;
}
