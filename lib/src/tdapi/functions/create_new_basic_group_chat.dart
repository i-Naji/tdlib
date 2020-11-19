part of '../tdapi.dart';

class CreateNewBasicGroupChat extends TdFunction {
  /// Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns the newly created chat
  CreateNewBasicGroupChat({this.userIds, this.title});

  /// [userIds] Identifiers of users to be added to the basic group
  List<int> userIds;

  /// [title] Title of the new basic group; 1-128 characters
  String title;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  CreateNewBasicGroupChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": this.userIds.map((i) => i).toList(),
      "title": this.title,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createNewBasicGroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
