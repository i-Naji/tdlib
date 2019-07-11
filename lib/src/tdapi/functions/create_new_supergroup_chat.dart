part of '../tdapi.dart';

class CreateNewSupergroupChat extends TLFunction {
  String title;
  bool isChannel;
  String description;
  dynamic extra;

  /// Creates a new supergroup or channel and sends a corresponding messageSupergroupChatCreate. Returns the newly created chat.
  ///[title] Title of the new chat; 1-128 characters .
  /// [isChannel] True, if a channel chat should be created .
  /// [paramDescription] Chat description; 0-255 characters
  CreateNewSupergroupChat({this.title, this.isChannel, this.description});

  /// Parse from a json
  CreateNewSupergroupChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "is_channel": this.isChannel,
      "description": this.description,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "createNewSupergroupChat";

  @override
  String getConstructor() => CONSTRUCTOR;
}
