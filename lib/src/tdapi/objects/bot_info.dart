part of '../tdapi.dart';

class BotInfo extends TdObject {
  String description;
  List<List<BotCommand>> commands;

  /// Provides information about a bot and its supported commands. 
  /// [description] Long description shown on the user info page . 
  /// [commands] A list of commands supported by the bot
  BotInfo({this.description,
    this.commands});

  /// Parse from a json
  BotInfo.fromJson(Map<String, dynamic> json)  {
    this.description = json['description'];
    this.commands = List<List<BotCommand>>.from((json['commands'] ?? []).map((item) => List<BotCommand>.from((item ?? []).map((innerItem) => BotCommand.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "description": this.description,
      "commands": this.commands.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'botInfo';
}