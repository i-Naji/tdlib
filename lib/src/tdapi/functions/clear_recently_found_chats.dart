part of '../tdapi.dart';

class ClearRecentlyFoundChats extends TdFunction {
  /// Clears the list of recently found chats
  ClearRecentlyFoundChats();

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ClearRecentlyFoundChats.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'clearRecentlyFoundChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
