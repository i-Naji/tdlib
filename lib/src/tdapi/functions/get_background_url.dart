part of '../tdapi.dart';

class GetBackgroundUrl extends TdFunction {

  /// Constructs a persistent HTTP URL for a background
  const GetBackgroundUrl({
    required this.name,
    required this.type,
  });
  
  /// [name] Background name 
  final String name;

  /// [type] Background type
  final BackgroundType type;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "name": name,
      "type": type.toJson(),
      "@extra": extra,
    };
  }
  
  GetBackgroundUrl copyWith({
    String? name,
    BackgroundType? type,
  }) => GetBackgroundUrl(
    name: name ?? this.name,
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'getBackgroundUrl';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
