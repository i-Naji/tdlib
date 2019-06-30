part of '../tdapi.dart';

class ConnectedWebsites implements TLObject {
  List<ConnectedWebsite> websites;
  dynamic extra;

  /// Contains a list of websites the current user is logged in with Telegram.
  ///[websites] List of connected websites
  ConnectedWebsites({this.websites});

  /// Parse from a json
  ConnectedWebsites.fromJson(Map<String, dynamic> json) {
    this.websites = (json['websites'] ?? [])
        .map((listValue) => ConnectedWebsite.fromJson(listValue))
        .toList();
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'websites': this.websites.map((listItem) => listItem.toJson()).toList()
    };
  }

  static const String CONSTRUCTOR = 'connectedWebsites';

  @override
  String getConstructor() => CONSTRUCTOR;
}
