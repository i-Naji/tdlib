part of '../tdapi.dart';

class GetSuggestedFileName extends TdFunction {

  /// Returns suggested name for saving a file in a given directory
  const GetSuggestedFileName({
    required this.fileId,
    required this.directory,
  });
  
  /// [fileId] Identifier of the file 
  final int fileId;

  /// [directory] Directory in which the file is supposed to be saved
  final String directory;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_id": fileId,
      "directory": directory,
      "@extra": extra,
    };
  }
  
  GetSuggestedFileName copyWith({
    int? fileId,
    String? directory,
  }) => GetSuggestedFileName(
    fileId: fileId ?? this.fileId,
    directory: directory ?? this.directory,
  );

  static const CONSTRUCTOR = 'getSuggestedFileName';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
