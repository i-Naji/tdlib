part of '../tdapi.dart';

class ToggleSupergroupHasAggressiveAntiSpamEnabled extends TdFunction {
  /// Toggles whether aggressive anti-spam checks are enabled in the supergroup. Can be called only if supergroupFullInfo.can_toggle_aggressive_anti_spam == true
  const ToggleSupergroupHasAggressiveAntiSpamEnabled({
    required this.supergroupId,
    required this.hasAggressiveAntiSpamEnabled,
  });

  /// [supergroupId] The identifier of the supergroup, which isn't a broadcast group
  final int supergroupId;

  /// [hasAggressiveAntiSpamEnabled] The new value of has_aggressive_anti_spam_enabled
  final bool hasAggressiveAntiSpamEnabled;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "has_aggressive_anti_spam_enabled": hasAggressiveAntiSpamEnabled,
      "@extra": extra,
    };
  }

  ToggleSupergroupHasAggressiveAntiSpamEnabled copyWith({
    int? supergroupId,
    bool? hasAggressiveAntiSpamEnabled,
  }) =>
      ToggleSupergroupHasAggressiveAntiSpamEnabled(
        supergroupId: supergroupId ?? this.supergroupId,
        hasAggressiveAntiSpamEnabled:
            hasAggressiveAntiSpamEnabled ?? this.hasAggressiveAntiSpamEnabled,
      );

  static const CONSTRUCTOR = 'toggleSupergroupHasAggressiveAntiSpamEnabled';

  @override
  String getConstructor() => CONSTRUCTOR;
}
