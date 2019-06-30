part of '../tdapi.dart';

class GetCreatedPublicChats extends TLFunction {
  dynamic extra;

  /// Returns a list of public chats created by the user.
  ///
  GetCreatedPublicChats();

  /// Parse from a json
  GetCreatedPublicChats.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, '@extra': this.extra};
  }

  static const String CONSTRUCTOR = 'getCreatedPublicChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
