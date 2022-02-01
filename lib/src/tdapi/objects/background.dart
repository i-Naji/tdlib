part of '../tdapi.dart';

class Background extends TdObject {

  /// Describes a chat background
  const Background({
    required this.id,
    required this.isDefault,
    required this.isDark,
    required this.name,
    this.document,
    required this.type,
    this.extra,
    this.clientId,
  });
  
  /// [id] Unique background identifier
  final int id;

  /// [isDefault] True, if this is one of default backgrounds
  final bool isDefault;

  /// [isDark] True, if the background is dark and is recommended to be used with dark theme
  final bool isDark;

  /// [name] Unique background name
  final String name;

  /// [document] Document with the background; may be null. Null only for filled backgrounds
  final Document? document;

  /// [type] Type of the background
  final BackgroundType type;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Background.fromJson(Map<String, dynamic> json) => Background(
    id: int.parse(json['id']),
    isDefault: json['is_default'],
    isDark: json['is_dark'],
    name: json['name'],
    document: json['document'] == null ? null : Document.fromJson(json['document']),
    type: BackgroundType.fromJson(json['type']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "is_default": isDefault,
      "is_dark": isDark,
      "name": name,
      "document": document?.toJson(),
      "type": type.toJson(),
    };
  }
  
  Background copyWith({
    int? id,
    bool? isDefault,
    bool? isDark,
    String? name,
    Document? document,
    BackgroundType? type,
    dynamic extra,
    int? clientId,
  }) => Background(
    id: id ?? this.id,
    isDefault: isDefault ?? this.isDefault,
    isDark: isDark ?? this.isDark,
    name: name ?? this.name,
    document: document ?? this.document,
    type: type ?? this.type,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'background';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
