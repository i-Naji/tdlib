part of '../tdapi.dart';

class CreateNewBasicGroupChat extends TdFunction {
  /// Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns the newly created chat
  const CreateNewBasicGroupChat({
    required this.userIds,
    required this.title,
    required this.messageAutoDeleteTime,
  });

  /// [userIds] Identifiers of users to be added to the basic group; may be empty to create a basic group without other members
  final List<int> userIds;

  /// [title] Title of the new basic group; 1-128 characters
  final String title;

  /// [messageAutoDeleteTime] Message auto-delete time value, in seconds; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically
  final int messageAutoDeleteTime;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": userIds.map((i) => i).toList(),
      "title": title,
      "message_auto_delete_time": messageAutoDeleteTime,
      "@extra": extra,
    };
  }

  CreateNewBasicGroupChat copyWith({
    List<int>? userIds,
    String? title,
    int? messageAutoDeleteTime,
  }) =>
      CreateNewBasicGroupChat(
        userIds: userIds ?? this.userIds,
        title: title ?? this.title,
        messageAutoDeleteTime:
            messageAutoDeleteTime ?? this.messageAutoDeleteTime,
      );

  static const CONSTRUCTOR = 'createNewBasicGroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
