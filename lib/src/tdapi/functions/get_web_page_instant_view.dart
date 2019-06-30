part of '../tdapi.dart';

class GetWebPageInstantView extends TLFunction {
  String url;
  bool forceFull;
  dynamic extra;

  /// Returns an instant view version of a web page if available. Returns a 404 error if the web page has no instant view page.
  ///[url] The web page URL .
  /// [forceFull] If true, the full instant view for the web page will be returned
  GetWebPageInstantView({this.url, this.forceFull});

  /// Parse from a json
  GetWebPageInstantView.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'url': this.url,
      'force_full': this.forceFull,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'getWebPageInstantView';

  @override
  String getConstructor() => CONSTRUCTOR;
}
