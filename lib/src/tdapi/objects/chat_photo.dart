part of '../tdapi.dart';

class ChatPhoto implements TdObject {
  File small;
  File big;

  /// Describes the photo of a chat.
  ///[small] A small (160x160) chat photo. The file can be downloaded only before the photo is changed .
  /// [big] A big (640x640) chat photo. The file can be downloaded only before the photo is changed
  ChatPhoto({this.small, this.big});

  /// Parse from a json
  ChatPhoto.fromJson(Map<String, dynamic> json) {
    this.small = File.fromJson(json['small'] ?? <String, dynamic>{});
    this.big = File.fromJson(json['big'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "small": this.small.toJson(),
      "big": this.big.toJson()
    };
  }

  static const String CONSTRUCTOR = "chatPhoto";

  @override
  String getConstructor() => CONSTRUCTOR;
}
