part of '../tdapi.dart';

class DisableAllSupergroupUsernames extends TdFunction {
  /// Disables all active non-editable usernames of a supergroup or channel, requires owner privileges in the supergroup or channel
  const DisableAllSupergroupUsernames({
    required this.supergroupId,
  });

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "@extra": extra,
    };
  }

  DisableAllSupergroupUsernames copyWith({
    int? supergroupId,
  }) =>
      DisableAllSupergroupUsernames(
        supergroupId: supergroupId ?? this.supergroupId,
      );

  static const CONSTRUCTOR = 'disableAllSupergroupUsernames';

  @override
  String getConstructor() => CONSTRUCTOR;
}
