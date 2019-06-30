part of '../tdapi.dart';

class CancelDownloadFile extends TLFunction {
  int fileId;
  bool onlyIfPending;
  dynamic extra;

  /// Stops the downloading of a file. If a file has already been downloaded, does nothing.
  ///[fileId] Identifier of a file to stop downloading .
  /// [onlyIfPending] Pass true to stop downloading only if it hasn't been started, i.e. request hasn't been sent to server
  CancelDownloadFile({this.fileId, this.onlyIfPending});

  /// Parse from a json
  CancelDownloadFile.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'file_id': this.fileId,
      'only_if_pending': this.onlyIfPending,
      '@extra': this.extra
    };
  }

  static const String CONSTRUCTOR = 'cancelDownloadFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
