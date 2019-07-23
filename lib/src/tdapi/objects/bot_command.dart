part of '../tdapi.dart';

class BotCommand implements TdObject {
  String command;
  String description;

  /// Represents commands supported by a bot.
  ///[command] Text of the bot command .
  /// [paramDescription] Description of the bot command
  BotCommand({this.command, this.description});

  /// Parse from a json
  BotCommand.fromJson(Map<String, dynamic> json) {
    this.command = json['command'];
    this.description = json['description'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "command": this.command,
      "description": this.description
    };
  }

  static const String CONSTRUCTOR = "botCommand";

  @override
  String getConstructor() => CONSTRUCTOR;
}
