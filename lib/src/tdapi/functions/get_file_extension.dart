part of '../tdapi.dart';

class GetFileExtension extends TdFunction {
  /// Returns the extension of a file, guessed by its MIME type. Returns an empty string on failure. Can be called synchronously
  GetFileExtension({this.mimeType});

  /// [mimeType] The MIME type of the file
  String mimeType;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetFileExtension.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "mime_type": this.mimeType,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getFileExtension';

  @override
  String getConstructor() => CONSTRUCTOR;
}
