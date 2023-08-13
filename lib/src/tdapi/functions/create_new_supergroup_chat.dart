part of '../tdapi.dart';

class CreateNewSupergroupChat extends TdFunction {
  /// Creates a new supergroup or channel and sends a corresponding messageSupergroupChatCreate. Returns the newly created chat
  const CreateNewSupergroupChat({
    required this.title,
    required this.isForum,
    required this.isChannel,
    required this.description,
    this.location,
    required this.messageAutoDeleteTime,
    required this.forImport,
  });

  /// [title] Title of the new chat; 1-128 characters
  final String title;

  /// [isForum] Pass true to create a forum supergroup chat
  final bool isForum;

  /// [isChannel] Pass true to create a channel chat; ignored if a forum is created
  final bool isChannel;

  /// [description] Chat description; 0-255 characters
  final String description;

  /// [location] Chat location if a location-based supergroup is being created; pass null to create an ordinary supergroup chat
  final ChatLocation? location;

  /// [messageAutoDeleteTime] Message auto-delete time value, in seconds; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically
  final int messageAutoDeleteTime;

  /// [forImport] Pass true to create a supergroup for importing messages using importMessage
  final bool forImport;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "is_forum": isForum,
      "is_channel": isChannel,
      "description": description,
      "location": location?.toJson(),
      "message_auto_delete_time": messageAutoDeleteTime,
      "for_import": forImport,
      "@extra": extra,
    };
  }

  CreateNewSupergroupChat copyWith({
    String? title,
    bool? isForum,
    bool? isChannel,
    String? description,
    ChatLocation? location,
    int? messageAutoDeleteTime,
    bool? forImport,
  }) =>
      CreateNewSupergroupChat(
        title: title ?? this.title,
        isForum: isForum ?? this.isForum,
        isChannel: isChannel ?? this.isChannel,
        description: description ?? this.description,
        location: location ?? this.location,
        messageAutoDeleteTime:
            messageAutoDeleteTime ?? this.messageAutoDeleteTime,
        forImport: forImport ?? this.forImport,
      );

  static const CONSTRUCTOR = 'createNewSupergroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
