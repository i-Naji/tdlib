part of '../tdapi.dart';

class PublicMessageLink extends TdObject {

  /// Contains a public HTTPS link to a message in a supergroup or channel with a username
  PublicMessageLink({this.link,
    this.html});

  /// [link] Message link 
  String link;

  /// [html] HTML-code for embedding the message
  String html;

  /// callback sign
  dynamic extra;

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
  
  @override
  String getConstructor() => CONSTRUCTOR;
}