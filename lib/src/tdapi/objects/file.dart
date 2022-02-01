part of '../tdapi.dart';

class File extends TdObject {

  /// Represents a file
  const File({
    required this.id,
    required this.size,
    required this.expectedSize,
    required this.local,
    required this.remote,
    this.extra,
    this.clientId,
  });
  
  /// [id] Unique file identifier
  final int id;

  /// [size] File size, in bytes; 0 if unknown
  final int size;

  /// [expectedSize] Approximate file size in bytes in case the exact file size is unknown. Can be used to show download/upload progress
  final int expectedSize;

  /// [local] Information about the local copy of the file
  final LocalFile local;

  /// [remote] Information about the remote copy of the file
  final RemoteFile remote;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory File.fromJson(Map<String, dynamic> json) => File(
    id: json['id'],
    size: json['size'],
    expectedSize: json['expected_size'],
    local: LocalFile.fromJson(json['local']),
    remote: RemoteFile.fromJson(json['remote']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "size": size,
      "expected_size": expectedSize,
      "local": local.toJson(),
      "remote": remote.toJson(),
    };
  }
  
  File copyWith({
    int? id,
    int? size,
    int? expectedSize,
    LocalFile? local,
    RemoteFile? remote,
    dynamic extra,
    int? clientId,
  }) => File(
    id: id ?? this.id,
    size: size ?? this.size,
    expectedSize: expectedSize ?? this.expectedSize,
    local: local ?? this.local,
    remote: remote ?? this.remote,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'file';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
