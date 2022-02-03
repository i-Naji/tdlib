part of '../tdapi.dart';

class CreateNewSupergroupChat extends TdFunction {

  /// Creates a new supergroup or channel and sends a corresponding messageSupergroupChatCreate. Returns the newly created chat
  const CreateNewSupergroupChat({
    required this.title,
    required this.isChannel,
    required this.description,
    this.location,
    required this.forImport,
  });
  
  /// [title] Title of the new chat; 1-128 characters
  final String title;

  /// [isChannel] True, if a channel chat needs to be created
  final bool isChannel;

  /// [description] Chat description; 0-255 characters
  final String description;

  /// [location] Chat location if a location-based supergroup is being created; pass null to create an ordinary supergroup chat
  final ChatLocation? location;

  /// [forImport] True, if the supergroup is created for importing messages using importMessage
  final bool forImport;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "is_channel": isChannel,
      "description": description,
      "location": location?.toJson(),
      "for_import": forImport,
      "@extra": extra,
    };
  }
  
  CreateNewSupergroupChat copyWith({
    String? title,
    bool? isChannel,
    String? description,
    ChatLocation? location,
    bool? forImport,
  }) => CreateNewSupergroupChat(
    title: title ?? this.title,
    isChannel: isChannel ?? this.isChannel,
    description: description ?? this.description,
    location: location ?? this.location,
    forImport: forImport ?? this.forImport,
  );

  static const CONSTRUCTOR = 'createNewSupergroupChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
