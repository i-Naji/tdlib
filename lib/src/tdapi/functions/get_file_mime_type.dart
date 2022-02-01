part of '../tdapi.dart';

class GetFileMimeType extends TdFunction {

  /// Returns the MIME type of a file, guessed by its extension. Returns an empty string on failure. Can be called synchronously
  const GetFileMimeType({
    required this.fileName,
  });
  
  /// [fileName] The name of the file or path to the file
  final String fileName;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_name": fileName,
      "@extra": extra,
    };
  }
  
  GetFileMimeType copyWith({
    String? fileName,
  }) => GetFileMimeType(
    fileName: fileName ?? this.fileName,
  );

  static const CONSTRUCTOR = 'getFileMimeType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
