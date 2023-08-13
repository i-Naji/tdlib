part of '../tdapi.dart';

class ToggleUsernameIsActive extends TdFunction {
  /// Changes active state for a username of the current user. The editable username can't be disabled. May return an error with a message "USERNAMES_ACTIVE_TOO_MUCH" if the maximum number of active usernames has been reached
  const ToggleUsernameIsActive({
    required this.username,
    required this.isActive,
  });

  /// [username] The username to change
  final String username;

  /// [isActive] Pass true to activate the username; pass false to disable it
  final bool isActive;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "username": username,
      "is_active": isActive,
      "@extra": extra,
    };
  }

  ToggleUsernameIsActive copyWith({
    String? username,
    bool? isActive,
  }) =>
      ToggleUsernameIsActive(
        username: username ?? this.username,
        isActive: isActive ?? this.isActive,
      );

  static const CONSTRUCTOR = 'toggleUsernameIsActive';

  @override
  String getConstructor() => CONSTRUCTOR;
}
