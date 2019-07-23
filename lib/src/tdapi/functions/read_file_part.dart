part of '../tdapi.dart';

class ReadFilePart extends TdFunction {
  int fileId;
  int offset;
  int count;
  dynamic extra;

  /// Reads a part of a file from the TDLib file cache and returns read bytes. This method is intended to be used only if the client has no direct access to TDLib's file system, because it is usually slower than a direct read from the file.
  ///[fileId] Identifier of the file. The file must be located in the TDLib file cache.
  /// [offset] The offset from which to read the file.
  /// [count] Number of bytes to read. An error will be returned if there are not enough bytes available in the file from the specified position. Pass 0 to read all available data from the specified position
  ReadFilePart({this.fileId, this.offset, this.count});

  /// Parse from a json
  ReadFilePart.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "offset": this.offset,
      "count": this.count,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "readFilePart";

  @override
  String getConstructor() => CONSTRUCTOR;
}
