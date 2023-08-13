part of '../tdapi.dart';

class ToggleAllDownloadsArePaused extends TdFunction {
  /// Changes pause state of all files in the file download list
  const ToggleAllDownloadsArePaused({
    required this.arePaused,
  });

  /// [arePaused] Pass true to pause all downloads; pass false to unpause them
  final bool arePaused;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "are_paused": arePaused,
      "@extra": extra,
    };
  }

  ToggleAllDownloadsArePaused copyWith({
    bool? arePaused,
  }) =>
      ToggleAllDownloadsArePaused(
        arePaused: arePaused ?? this.arePaused,
      );

  static const CONSTRUCTOR = 'toggleAllDownloadsArePaused';

  @override
  String getConstructor() => CONSTRUCTOR;
}
