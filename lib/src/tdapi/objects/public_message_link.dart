part of '../tdapi.dart';

class PublicMessageLink implements TdObject {
  String link;
  String html;
  dynamic extra;

  /// Contains a public HTTPS link to a message in a public supergroup or channel.
  ///[link] Message link .
  /// [html] HTML-code for embedding the message
  PublicMessageLink({this.link, this.html});

  /// Parse from a json
  PublicMessageLink.fromJson(Map<String, dynamic> json) {
    this.link = json['link'];
    this.html = json['html'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "link": this.link, "html": this.html};
  }

  static const String CONSTRUCTOR = "publicMessageLink";

  @override
  String getConstructor() => CONSTRUCTOR;
}
