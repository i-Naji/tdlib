part of '../tdapi.dart';

class ConnectedWebsites extends TdObject {
  List<ConnectedWebsite> websites;
  dynamic extra;

  /// Contains a list of websites the current user is logged in with Telegram. 
  /// [websites] List of connected websites
  ConnectedWebsites({this.websites});

  /// Parse from a json
  ConnectedWebsites.fromJson(Map<String, dynamic> json)  {
    this.websites = List<ConnectedWebsite>.from((json['websites'] ?? []).map((item) => ConnectedWebsite.fromJson(item ?? <String, dynamic>{})).toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "websites": this.websites.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'connectedWebsites';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}