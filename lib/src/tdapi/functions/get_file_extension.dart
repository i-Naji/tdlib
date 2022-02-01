part of '../tdapi.dart';

class GetFileExtension extends TdFunction {

  /// Returns the extension of a file, guessed by its MIME type. Returns an empty string on failure. Can be called synchronously
  const GetFileExtension({
    required this.mimeType,
  });
  
  /// [mimeType] The MIME type of the file
  final String mimeType;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "mime_type": mimeType,
      "@extra": extra,
    };
  }
  
  GetFileExtension copyWith({
    String? mimeType,
  }) => GetFileExtension(
    mimeType: mimeType ?? this.mimeType,
  );

  static const CONSTRUCTOR = 'getFileExtension';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
