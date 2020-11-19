part of '../tdapi.dart';

class GetWebPageInstantView extends TdFunction {
  /// Returns an instant view version of a web page if available. Returns a 404 error if the web page has no instant view page
  GetWebPageInstantView({this.url, this.forceFull});

  /// [url] The web page URL
  String url;

  /// [forceFull] If true, the full instant view for the web page will be returned
  bool forceFull;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetWebPageInstantView.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
      "force_full": this.forceFull,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getWebPageInstantView';

  @override
  String getConstructor() => CONSTRUCTOR;
}
