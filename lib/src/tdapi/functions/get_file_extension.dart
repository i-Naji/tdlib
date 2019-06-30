part of '../tdapi.dart';

class GetFileExtension extends TLFunction {
  String mimeType;
  dynamic extra;

  /// Returns the extension of a file, guessed by its MIME type. Returns an empty string on failure. This is an offline method. Can be called before authorization. Can be called synchronously.
  ///[mimeType] The MIME type of the file
  GetFileExtension({this.mimeType});

  /// Parse from a json
  GetFileExtension.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'mime_type': this.mimeType,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'getFileExtension';

  @override
  String getConstructor() => CONSTRUCTOR;
}
