part of '../tdapi.dart';

class ToggleSupergroupHasHiddenMembers extends TdFunction {
  /// Toggles whether non-administrators can receive only administrators and bots using getSupergroupMembers or searchChatMembers. Can be called only if supergroupFullInfo.can_hide_members == true
  const ToggleSupergroupHasHiddenMembers({
    required this.supergroupId,
    required this.hasHiddenMembers,
  });

  /// [supergroupId] Identifier of the supergroup
  final int supergroupId;

  /// [hasHiddenMembers] New value of has_hidden_members
  final bool hasHiddenMembers;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "has_hidden_members": hasHiddenMembers,
      "@extra": extra,
    };
  }

  ToggleSupergroupHasHiddenMembers copyWith({
    int? supergroupId,
    bool? hasHiddenMembers,
  }) =>
      ToggleSupergroupHasHiddenMembers(
        supergroupId: supergroupId ?? this.supergroupId,
        hasHiddenMembers: hasHiddenMembers ?? this.hasHiddenMembers,
      );

  static const CONSTRUCTOR = 'toggleSupergroupHasHiddenMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
