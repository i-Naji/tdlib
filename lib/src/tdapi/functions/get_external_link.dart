part of '../tdapi.dart';

class GetExternalLink extends TdFunction {

  /// Returns an HTTP URL which can be used to automatically authorize the current user on a website after clicking an HTTP link. Use the method getExternalLinkInfo to find whether a prior user confirmation is needed
  const GetExternalLink({
    required this.link,
    required this.allowWriteAccess,
  });
  
  /// [link] The HTTP link
  final String link;

  /// [allowWriteAccess] True, if the current user allowed the bot, returned in getExternalLinkInfo, to send them messages
  final bool allowWriteAccess;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "link": link,
      "allow_write_access": allowWriteAccess,
      "@extra": extra,
    };
  }
  
  GetExternalLink copyWith({
    String? link,
    bool? allowWriteAccess,
  }) => GetExternalLink(
    link: link ?? this.link,
    allowWriteAccess: allowWriteAccess ?? this.allowWriteAccess,
  );

  static const CONSTRUCTOR = 'getExternalLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
