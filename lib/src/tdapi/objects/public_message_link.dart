part of '../tdapi.dart';

class PublicMessageLink extends TdObject {
  String link;
  String html;
  dynamic extra;

  /// Contains a public HTTPS link to a message in a supergroup or channel with a username. 
  /// [link] Message link . 
  /// [html] HTML-code for embedding the message
  PublicMessageLink({this.link,
    this.html});

  /// Parse from a json
  PublicMessageLink.fromJson(Map<String, dynamic> json)  {
    this.link = json['link'];
    this.html = json['html'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "link": this.link,
      "html": this.html,
    };
  }

  static const CONSTRUCTOR = 'publicMessageLink';
}