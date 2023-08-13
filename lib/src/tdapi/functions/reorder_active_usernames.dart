part of '../tdapi.dart';

class ReorderActiveUsernames extends TdFunction {
  /// Changes order of active usernames of the current user
  const ReorderActiveUsernames({
    required this.usernames,
  });

  /// [usernames] The new order of active usernames. All currently active usernames must be specified
  final List<String> usernames;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "usernames": usernames.map((i) => i).toList(),
      "@extra": extra,
    };
  }

  ReorderActiveUsernames copyWith({
    List<String>? usernames,
  }) =>
      ReorderActiveUsernames(
        usernames: usernames ?? this.usernames,
      );

  static const CONSTRUCTOR = 'reorderActiveUsernames';

  @override
  String getConstructor() => CONSTRUCTOR;
}
