part of '../tdapi.dart';

class ConnectedWebsites extends TdObject {
  List<List<ConnectedWebsite>> websites;
  dynamic extra;

  /// Contains a list of websites the current user is logged in with Telegram. 
  /// [websites] List of connected websites
  ConnectedWebsites({this.websites});

  /// Parse from a json
  ConnectedWebsites.fromJson(Map<String, dynamic> json)  {
    this.websites = List<List<ConnectedWebsite>>.from((json['websites'] ?? []).map((item) => List<ConnectedWebsite>.from((item ?? []).map((innerItem) => ConnectedWebsite.fromJson(innerItem ?? <String, dynamic>{})).toList())).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "websites": this.websites.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'connectedWebsites';
}