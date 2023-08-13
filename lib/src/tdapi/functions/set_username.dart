part of '../tdapi.dart';

class SetUsername extends TdFunction {
  /// Changes the editable username of the current user
  const SetUsername({
    required this.username,
  });

  /// [username] The new value of the username. Use an empty string to remove the username. The username can't be completely removed if there is another active or disabled username
  final String username;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "username": username,
      "@extra": extra,
    };
  }

  SetUsername copyWith({
    String? username,
  }) =>
      SetUsername(
        username: username ?? this.username,
      );

  static const CONSTRUCTOR = 'setUsername';

  @override
  String getConstructor() => CONSTRUCTOR;
}
