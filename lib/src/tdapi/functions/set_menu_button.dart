part of '../tdapi.dart';

class SetMenuButton extends TdFunction {
  /// Sets menu button for the given user or for all users; for bots only
  const SetMenuButton({
    required this.userId,
    required this.menuButton,
  });

  /// [userId] Identifier of the user or 0 to set menu button for all users
  final int userId;

  /// [menuButton] New menu button
  final BotMenuButton menuButton;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "menu_button": menuButton.toJson(),
      "@extra": extra,
    };
  }

  SetMenuButton copyWith({
    int? userId,
    BotMenuButton? menuButton,
  }) =>
      SetMenuButton(
        userId: userId ?? this.userId,
        menuButton: menuButton ?? this.menuButton,
      );

  static const CONSTRUCTOR = 'setMenuButton';

  @override
  String getConstructor() => CONSTRUCTOR;
}
