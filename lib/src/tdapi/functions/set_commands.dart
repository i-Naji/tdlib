part of '../tdapi.dart';

class SetCommands extends TdFunction {
  /// Sets the list of commands supported by the bot; for bots only
  SetCommands({this.commands});

  /// [commands] List of the bot's commands
  List<BotCommand> commands;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetCommands.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "commands": this.commands.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setCommands';

  @override
  String getConstructor() => CONSTRUCTOR;
}
