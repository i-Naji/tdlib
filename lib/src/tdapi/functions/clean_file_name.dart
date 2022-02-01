part of '../tdapi.dart';

class CleanFileName extends TdFunction {

  /// Removes potentially dangerous characters from the name of a file. The encoding of the file name is supposed to be UTF-8. Returns an empty string on failure. Can be called synchronously
  const CleanFileName({
    required this.fileName,
  });
  
  /// [fileName] File name or path to the file
  final String fileName;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_name": fileName,
      "@extra": extra,
    };
  }
  
  CleanFileName copyWith({
    String? fileName,
  }) => CleanFileName(
    fileName: fileName ?? this.fileName,
  );

  static const CONSTRUCTOR = 'cleanFileName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
