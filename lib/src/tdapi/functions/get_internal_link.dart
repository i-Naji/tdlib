part of '../tdapi.dart';

class GetInternalLink extends TdFunction {
  /// Returns an HTTPS or a tg: link with the given type. Can be called before authorization
  const GetInternalLink({
    required this.type,
    required this.isHttp,
  });

  /// [type] Expected type of the link
  final InternalLinkType type;

  /// [isHttp] Pass true to create an HTTPS link (only available for some link types); pass false to create a tg: link
  final bool isHttp;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "is_http": isHttp,
      "@extra": extra,
    };
  }

  GetInternalLink copyWith({
    InternalLinkType? type,
    bool? isHttp,
  }) =>
      GetInternalLink(
        type: type ?? this.type,
        isHttp: isHttp ?? this.isHttp,
      );

  static const CONSTRUCTOR = 'getInternalLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
