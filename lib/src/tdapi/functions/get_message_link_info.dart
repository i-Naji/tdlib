part of '../tdapi.dart';

class GetMessageLinkInfo extends TdFunction {

  /// Returns information about a public or private message link. Can be called for any internal link of the type internalLinkTypeMessage
  const GetMessageLinkInfo({
    required this.url,
  });
  
  /// [url] The message link
  final String url;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "url": url,
      "@extra": extra,
    };
  }
  
  GetMessageLinkInfo copyWith({
    String? url,
  }) => GetMessageLinkInfo(
    url: url ?? this.url,
  );

  static const CONSTRUCTOR = 'getMessageLinkInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
