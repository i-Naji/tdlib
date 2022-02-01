part of '../tdapi.dart';

class GetWebPageInstantView extends TdFunction {

  /// Returns an instant view version of a web page if available. Returns a 404 error if the web page has no instant view page
  const GetWebPageInstantView({
    required this.url,
    required this.forceFull,
  });
  
  /// [url] The web page URL 
  final String url;

  /// [forceFull] If true, the full instant view for the web page will be returned
  final bool forceFull;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "force_full": forceFull,
      "@extra": extra,
    };
  }
  
  GetWebPageInstantView copyWith({
    String? url,
    bool? forceFull,
  }) => GetWebPageInstantView(
    url: url ?? this.url,
    forceFull: forceFull ?? this.forceFull,
  );

  static const CONSTRUCTOR = 'getWebPageInstantView';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
