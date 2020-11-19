part of '../tdapi.dart';

class File extends TdObject {
  /// Represents a file
  File({this.id, this.size, this.expectedSize, this.local, this.remote});

  /// [id] Unique file identifier
  int id;

  /// [size] File size; 0 if unknown
  int size;

  /// [expectedSize] Expected file size in case the exact file size is unknown, but an approximate size is known. Can be used to show download/upload progress
  int expectedSize;

  /// [local] Information about the local copy of the file
  LocalFile local;

  /// [remote] Information about the remote copy of the file
  RemoteFile remote;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  File.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.size = json['size'];
    this.expectedSize = json['expected_size'];
    this.local = LocalFile.fromJson(json['local'] ?? <String, dynamic>{});
    this.remote = RemoteFile.fromJson(json['remote'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "size": this.size,
      "expected_size": this.expectedSize,
      "local": this.local == null ? null : this.local.toJson(),
      "remote": this.remote == null ? null : this.remote.toJson(),
    };
  }

  static const CONSTRUCTOR = 'file';

  @override
  String getConstructor() => CONSTRUCTOR;
}
