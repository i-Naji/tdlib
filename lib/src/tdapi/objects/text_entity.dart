part of '../tdapi.dart';

class TextEntity implements TLObject {
  int offset;
  int length;
  var type;

  /// Represents a part of the text that needs to be formatted in some unusual way.
  ///[offset] Offset of the entity in UTF-16 code points .
  /// [length] Length of the entity, in UTF-16 code points .
  /// [type] Type of the entity
  TextEntity({this.offset, this.length, this.type});

  /// Parse from a json
  TextEntity.fromJson(Map<String, dynamic> json) {
    this.offset = json['offset'];
    this.length = json['length'];
    this.type = TextEntityType.fromJson(json['type'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'offset': this.offset,
      'length': this.length,
      'type': this.type.toJson()
    };
  }

  static const String CONSTRUCTOR = 'textEntity';

  @override
  String getConstructor() => CONSTRUCTOR;
}
