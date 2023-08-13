part of '../tdapi.dart';

class SetCloseFriends extends TdFunction {
  /// Changes the list of close friends of the current user
  const SetCloseFriends({
    required this.userIds,
  });

  /// [userIds] User identifiers of close friends; the users must be contacts of the current user
  final List<int> userIds;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": userIds.map((i) => i).toList(),
      "@extra": extra,
    };
  }

  SetCloseFriends copyWith({
    List<int>? userIds,
  }) =>
      SetCloseFriends(
        userIds: userIds ?? this.userIds,
      );

  static const CONSTRUCTOR = 'setCloseFriends';

  @override
  String getConstructor() => CONSTRUCTOR;
}
