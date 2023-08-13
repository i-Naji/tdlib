part of '../tdapi.dart';

class ToggleSupergroupUsernameIsActive extends TdFunction {
  /// Changes active state for a username of a supergroup or channel, requires owner privileges in the supergroup or channel. The editable username can't be disabled.. May return an error with a message "USERNAMES_ACTIVE_TOO_MUCH" if the maximum number of active usernames has been reached
  const ToggleSupergroupUsernameIsActive({
    required this.supergroupId,
    required this.username,
    required this.isActive,
  });

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  /// [username] The username to change
  final String username;

  /// [isActive] Pass true to activate the username; pass false to disable it
  final bool isActive;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "username": username,
      "is_active": isActive,
      "@extra": extra,
    };
  }

  ToggleSupergroupUsernameIsActive copyWith({
    int? supergroupId,
    String? username,
    bool? isActive,
  }) =>
      ToggleSupergroupUsernameIsActive(
        supergroupId: supergroupId ?? this.supergroupId,
        username: username ?? this.username,
        isActive: isActive ?? this.isActive,
      );

  static const CONSTRUCTOR = 'toggleSupergroupUsernameIsActive';

  @override
  String getConstructor() => CONSTRUCTOR;
}
