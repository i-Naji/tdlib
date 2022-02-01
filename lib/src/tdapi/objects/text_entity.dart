part of '../tdapi.dart';

class TextEntity extends TdObject {

  /// Represents a part of the text that needs to be formatted in some unusual way
  const TextEntity({
    required this.offset,
    required this.length,
    required this.type,
  });
  
  /// [offset] Offset of the entity, in UTF-16 code units 
  final int offset;

  /// [length] Length of the entity, in UTF-16 code units 
  final int length;

  /// [type] Type of the entity
  final TextEntityType type;
  
  /// Parse from a json
  factory TextEntity.fromJson(Map<String, dynamic> json) => TextEntity(
    offset: json['offset'],
    length: json['length'],
    type: TextEntityType.fromJson(json['type']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "offset": offset,
      "length": length,
      "type": type.toJson(),
    };
  }
  
  TextEntity copyWith({
    int? offset,
    int? length,
    TextEntityType? type,
  }) => TextEntity(
    offset: offset ?? this.offset,
    length: length ?? this.length,
    type: type ?? this.type,
  );

  static const CONSTRUCTOR = 'textEntity';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
