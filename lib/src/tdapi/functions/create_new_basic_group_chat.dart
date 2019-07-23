part of '../tdapi.dart';

class CreateNewBasicGroupChat extends TdFunction {
  List<int> userIds;
  String title;
  dynamic extra;

  /// Creates a new basic group and sends a corresponding messageBasicGroupChatCreate. Returns the newly created chat.
  ///[userIds] Identifiers of users to be added to the basic group .
  /// [title] Title of the new basic group; 1-128 characters
  CreateNewBasicGroupChat({this.userIds, this.title});

  /// Parse from a json
  CreateNewBasicGroupChat.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": this.userIds,
      "title": this.title,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "createNewBasicGroupChat";

  @override
  String getConstructor() => CONSTRUCTOR;
}
