part of '../tdapi.dart';

class RemoveBackground extends TdFunction {

  /// Removes background from the list of installed backgrounds
  const RemoveBackground({
    required this.backgroundId,
  });
  
  /// [backgroundId] The background identifier
  final int backgroundId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "background_id": backgroundId,
      "@extra": extra,
    };
  }
  
  RemoveBackground copyWith({
    int? backgroundId,
  }) => RemoveBackground(
    backgroundId: backgroundId ?? this.backgroundId,
  );

  static const CONSTRUCTOR = 'removeBackground';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
