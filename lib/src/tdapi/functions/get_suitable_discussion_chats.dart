part of '../tdapi.dart';

class GetSuitableDiscussionChats extends TdFunction {
  /// Returns a list of basic group and supergroup chats, which can be used as a discussion group for a channel. Returned basic group chats must be first upgraded to supergroups before they can be set as a discussion group.. To set a returned supergroup as a discussion group, access to its old messages must be enabled using toggleSupergroupIsAllHistoryAvailable first
  const GetSuitableDiscussionChats();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "@extra": extra,
    };
  }

  GetSuitableDiscussionChats copyWith() => const GetSuitableDiscussionChats();

  static const CONSTRUCTOR = 'getSuitableDiscussionChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
