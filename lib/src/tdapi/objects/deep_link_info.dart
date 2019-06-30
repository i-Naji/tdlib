part of '../tdapi.dart';

class DeepLinkInfo implements TLObject {
  FormattedText text;
  bool needUpdateApplication;
  dynamic extra;

  /// Contains information about a tg.
  ///
  DeepLinkInfo({this.text, this.needUpdateApplication});

  /// Parse from a json
  DeepLinkInfo.fromJson(Map<String, dynamic> json) {
    this.text = FormattedText.fromJson(json['text'] ?? <String, dynamic>{});
    this.needUpdateApplication = json['need_update_application'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'text': this.text.toJson(),
      'need_update_application': this.needUpdateApplication
    };
  }

  static const String CONSTRUCTOR = 'deepLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
