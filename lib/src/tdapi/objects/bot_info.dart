part of '../tdapi.dart';

class BotInfo implements TdObject {
  String description;
  List<BotCommand> commands;

  /// Provides information about a bot and its supported commands.
  ///[paramDescription] Long description shown on the user info page .
  /// [commands] A list of commands supported by the bot
  BotInfo({this.description, this.commands});

  /// Parse from a json
  BotInfo.fromJson(Map<String, dynamic> json) {
    this.description = json['description'];
    this.commands = List<BotCommand>.from((json['commands'] ?? [])
        .map((listValue) => BotCommand.fromJson(listValue))
        .toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "description": this.description,
      "commands": this.commands.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = "botInfo";

  @override
  String getConstructor() => CONSTRUCTOR;
}
