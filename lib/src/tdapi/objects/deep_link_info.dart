part of '../tdapi.dart';

class DeepLinkInfo extends TdObject {
  FormattedText text;
  bool needUpdateApplication;
  dynamic extra;

  /// Contains information about a tg:// deep link. 
  /// [text] Text to be shown to the user . 
  /// [needUpdateApplication] True, if user should be asked to update the application
  DeepLinkInfo({this.text,
    this.needUpdateApplication});

  /// Parse from a json
  DeepLinkInfo.fromJson(Map<String, dynamic> json)  {
    this.text = FormattedText.fromJson(json['text'] ?? <String, dynamic>{});
    this.needUpdateApplication = json['need_update_application'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
      "need_update_application": this.needUpdateApplication,
    };
  }

  static const CONSTRUCTOR = 'deepLinkInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}