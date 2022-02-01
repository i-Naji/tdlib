part of '../tdapi.dart';

class GetInternalLinkType extends TdFunction {

  /// Returns information about the type of an internal link. Returns a 404 error if the link is not internal. Can be called before authorization
  const GetInternalLinkType({
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
  
  GetInternalLinkType copyWith({
    String? link,
  }) => GetInternalLinkType(
    link: link ?? this.link,
  );

  static const CONSTRUCTOR = 'getInternalLinkType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
