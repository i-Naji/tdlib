part of '../tdapi.dart';

class DeepLinkInfo extends TdObject {
  /// Contains information about a tg:// deep link
  DeepLinkInfo({this.text, this.needUpdateApplication});

  /// [text] Text to be shown to the user
  FormattedText text;

  /// [needUpdateApplication] True, if user should be asked to update the application
  bool needUpdateApplication;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  DeepLinkInfo.fromJson(Map<String, dynamic> json) {
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
