part of '../tdapi.dart';

class CreateNewSupergroupChat extends TdFunction {
  /// Creates a new supergroup or channel and sends a corresponding messageSupergroupChatCreate. Returns the newly created chat
  CreateNewSupergroupChat(
      {this.title, this.isChannel, this.description, this.location});

  /// [title] Title of the new chat; 1-128 characters
  String title;

  /// [isChannel] True, if a channel chat should be created
  bool isChannel;

  /// [description] Chat description; 0-255 characters
  String description;

  /// [location] Chat location if a location-based supergroup is being created
  ChatLocation location;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CreateNewSupergroupChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "is_channel": this.isChannel,
      "description": this.description,
      "location": this.location == null ? null : this.location.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createNewSupergroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
