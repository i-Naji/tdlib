part of '../tdapi.dart';

class SetCommands extends TdFunction {
  List<BotCommand> commands;
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
      "commands": this.commands.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setCommands';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}