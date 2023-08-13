part of '../tdapi.dart';

class GroupCallStreams extends TdObject {
  /// Represents a list of group call streams
  const GroupCallStreams({
    required this.streams,
    this.extra,
    this.clientId,
  });

  /// [streams] A list of group call streams
  final List<GroupCallStream> streams;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory GroupCallStreams.fromJson(Map<String, dynamic> json) =>
      GroupCallStreams(
        streams: List<GroupCallStream>.from((json['streams'] ?? [])
            .map((item) => GroupCallStream.fromJson(item))
            .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "streams": streams.map((i) => i.toJson()).toList(),
    };
  }

  GroupCallStreams copyWith({
    List<GroupCallStream>? streams,
    dynamic extra,
    int? clientId,
  }) =>
      GroupCallStreams(
        streams: streams ?? this.streams,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  static const CONSTRUCTOR = 'groupCallStreams';

  @override
  String getConstructor() => CONSTRUCTOR;
}
