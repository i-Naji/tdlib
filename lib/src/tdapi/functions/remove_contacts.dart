part of '../tdapi.dart';

class RemoveContacts extends TdFunction {
  /// Removes users from the contact list
  RemoveContacts({this.userIds});

  /// [userIds] Identifiers of users to be deleted
  List<int> userIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  RemoveContacts.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_ids": this.userIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
