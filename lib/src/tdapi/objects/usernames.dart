part of '../tdapi.dart';

class Usernames extends TdObject {
  /// Describes usernames assigned to a user, a supergroup, or a channel
  const Usernames({
    required this.activeUsernames,
    required this.disabledUsernames,
    required this.editableUsername,
  });

  /// [activeUsernames] List of active usernames; the first one must be shown as the primary username. The order of active usernames can be changed with reorderActiveUsernames, reorderBotActiveUsernames or reorderSupergroupActiveUsernames
  final List<String> activeUsernames;

  /// [disabledUsernames] List of currently disabled usernames; the username can be activated with toggleUsernameIsActive, toggleBotUsernameIsActive, or toggleSupergroupUsernameIsActive
  final List<String> disabledUsernames;

  /// [editableUsername] The active username, which can be changed with setUsername or setSupergroupUsername
  final String editableUsername;

  /// Parse from a json
  factory Usernames.fromJson(Map<String, dynamic> json) => Usernames(
        activeUsernames: List<String>.from(
            (json['active_usernames'] ?? []).map((item) => item).toList()),
        disabledUsernames: List<String>.from(
            (json['disabled_usernames'] ?? []).map((item) => item).toList()),
        editableUsername: json['editable_username'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "active_usernames": activeUsernames.map((i) => i).toList(),
      "disabled_usernames": disabledUsernames.map((i) => i).toList(),
      "editable_username": editableUsername,
    };
  }

  Usernames copyWith({
    List<String>? activeUsernames,
    List<String>? disabledUsernames,
    String? editableUsername,
  }) =>
      Usernames(
        activeUsernames: activeUsernames ?? this.activeUsernames,
        disabledUsernames: disabledUsernames ?? this.disabledUsernames,
        editableUsername: editableUsername ?? this.editableUsername,
      );

  static const CONSTRUCTOR = 'usernames';

  @override
  String getConstructor() => CONSTRUCTOR;
}
