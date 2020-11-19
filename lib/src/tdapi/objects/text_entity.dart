part of '../tdapi.dart';

class TextEntity extends TdObject {
  /// Represents a part of the text that needs to be formatted in some unusual way
  TextEntity({this.offset, this.length, this.type});

  /// [offset] Offset of the entity, in UTF-16 code units
  int offset;

  /// [length] Length of the entity, in UTF-16 code units
  int length;

  /// [type] Type of the entity
  TextEntityType type;

  /// Parse from a json
  TextEntity.fromJson(Map<String, dynamic> json) {
    this.offset = json['offset'];
    this.length = json['length'];
    this.type = TextEntityType.fromJson(json['type'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "offset": this.offset,
      "length": this.length,
      "type": this.type == null ? null : this.type.toJson(),
    };
  }

  static const CONSTRUCTOR = 'textEntity';

  @override
  String getConstructor() => CONSTRUCTOR;
}
