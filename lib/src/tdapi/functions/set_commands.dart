part of '../tdapi.dart';

class SetCommands extends TdFunction {
  List<List<BotCommand>> commands;
  dynamic extra;

  /// Sets the list of commands supported by the bot; for bots only. 
  /// [commands] List of the bot's commands
  SetCommands({this.commands});

  /// Parse from a json
  SetCommands.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "commands": this.commands.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setCommands';
}