part of '../tdapi.dart';

class MessageLink extends TdObject {
  /// Contains an HTTPS link to a message in a supergroup or channel
  MessageLink({this.link, this.isPublic});

  /// [link] Message link
  String link;

  /// [isPublic] True, if the link will work for non-members of the chat
  bool isPublic;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  MessageLink.fromJson(Map<String, dynamic> json) {
    this.link = json['link'];
    this.isPublic = json['is_public'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "link": this.link,
      "is_public": this.isPublic,
    };
  }

  static const CONSTRUCTOR = 'messageLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
