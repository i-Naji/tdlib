part of '../tdapi.dart';

class CreateNewSupergroupChat extends TdFunction {
  String title;
  bool isChannel;
  String description;
  ChatLocation location;
  dynamic extra;

  /// Creates a new supergroup or channel and sends a corresponding messageSupergroupChatCreate. Returns the newly created chat. 
  /// [title] Title of the new chat; 1-128 characters . 
  /// [isChannel] True, if a channel chat should be created . 
  /// [description] Chat description; 0-255 characters . 
  /// [location] Chat location if a location-based supergroup is being created
  CreateNewSupergroupChat({this.title,
    this.isChannel,
    this.description,
    this.location});

  /// Parse from a json
  CreateNewSupergroupChat.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": this.title,
      "is_channel": this.isChannel,
      "description": this.description,
      "location": this.location.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createNewSupergroupChat';
}