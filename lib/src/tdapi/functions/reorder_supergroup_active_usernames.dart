part of '../tdapi.dart';

class ReorderSupergroupActiveUsernames extends TdFunction {
  /// Changes order of active usernames of a supergroup or channel, requires owner privileges in the supergroup or channel
  const ReorderSupergroupActiveUsernames({
    required this.supergroupId,
    required this.usernames,
  });

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  /// [usernames] The new order of active usernames. All currently active usernames must be specified
  final List<String> usernames;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "usernames": usernames.map((i) => i).toList(),
      "@extra": extra,
    };
  }

  ReorderSupergroupActiveUsernames copyWith({
    int? supergroupId,
    List<String>? usernames,
  }) =>
      ReorderSupergroupActiveUsernames(
        supergroupId: supergroupId ?? this.supergroupId,
        usernames: usernames ?? this.usernames,
      );

  static const CONSTRUCTOR = 'reorderSupergroupActiveUsernames';

  @override
  String getConstructor() => CONSTRUCTOR;
}
