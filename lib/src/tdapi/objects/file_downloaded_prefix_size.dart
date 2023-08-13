part of '../tdapi.dart';

class FileDownloadedPrefixSize extends TdObject {
  /// Contains size of downloaded prefix of a file
  const FileDownloadedPrefixSize({
    required this.size,
    this.extra,
    this.clientId,
  });

  /// [size] The prefix size, in bytes
  final int size;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory FileDownloadedPrefixSize.fromJson(Map<String, dynamic> json) =>
      FileDownloadedPrefixSize(
        size: json['size'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "size": size,
    };
  }

  FileDownloadedPrefixSize copyWith({
    int? size,
    dynamic extra,
    int? clientId,
  }) =>
      FileDownloadedPrefixSize(
        size: size ?? this.size,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'fileDownloadedPrefixSize';

  @override
  String getConstructor() => CONSTRUCTOR;
}
