part of '../tdapi.dart';

class GetExternalLinkInfo extends TdFunction {

  /// Returns information about an action to be done when the current user clicks an external link. Don't use this method for links from secret chats if web page preview is disabled in secret chats
  const GetExternalLinkInfo({
    required this.link,
  });
  
  /// [link] The link
  final String link;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "link": link,
      "@extra": extra,
    };
  }
  
  GetExternalLinkInfo copyWith({
    String? link,
  }) => GetExternalLinkInfo(
    link: link ?? this.link,
  );

  static const CONSTRUCTOR = 'getExternalLinkInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
