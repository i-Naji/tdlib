part of '../tdapi.dart';

class File implements TLObject {
  int id;
  int size;
  int expectedSize;
  LocalFile local;
  RemoteFile remote;
  dynamic extra;

  /// Represents a file.
  ///[id] Unique file identifier.
  /// [size] File size; 0 if unknown.
  /// [expectedSize] Expected file size in case the exact file size is unknown, but an approximate size is known. Can be used to show download.
  /// [local] Information about the local copy of the file.
  /// [remote] Information about the remote copy of the file
  File({this.id, this.size, this.expectedSize, this.local, this.remote});

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
      '@type': CONSTRUCTOR,
      'id': this.id,
      'size': this.size,
      'expected_size': this.expectedSize,
      'local': this.local.toJson(),
      'remote': this.remote.toJson()
    };
  }

  static const String CONSTRUCTOR = 'file';

  @override
  String getConstructor() => CONSTRUCTOR;
}
