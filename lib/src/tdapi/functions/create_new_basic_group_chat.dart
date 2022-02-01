part of '../tdapi.dart';

class CreateNewBasicGroupChat extends TdFunction {

  /// Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns the newly created chat
  const CreateNewBasicGroupChat({
    required this.userIds,
    required this.title,
  });
  
  /// [userIds] Identifiers of users to be added to the basic group 
  final List<int> userIds;

  /// [title] Title of the new basic group; 1-128 characters
  final String title;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": userIds.map((i) => i).toList(),
      "title": title,
      "@extra": extra,
    };
  }
  
  CreateNewBasicGroupChat copyWith({
    List<int>? userIds,
    String? title,
  }) => CreateNewBasicGroupChat(
    userIds: userIds ?? this.userIds,
    title: title ?? this.title,
  );

  static const CONSTRUCTOR = 'createNewBasicGroupChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
