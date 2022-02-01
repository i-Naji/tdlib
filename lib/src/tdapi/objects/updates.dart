part of '../tdapi.dart';

class Updates extends TdObject {

  /// Contains a list of updates
  const Updates({
    required this.updates,
    this.extra,
    this.clientId,
  });
  
  /// [updates] List of updates
  final List<Update> updates;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Updates.fromJson(Map<String, dynamic> json) => Updates(
    updates: List<Update>.from((json['updates'] ?? []).map((item) => Update.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "updates": updates.map((i) => i.toJson()).toList(),
    };
  }
  
  Updates copyWith({
    List<Update>? updates,
    dynamic extra,
    int? clientId,
  }) => Updates(
    updates: updates ?? this.updates,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'updates';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
