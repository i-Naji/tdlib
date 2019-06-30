part of '../tdapi.dart';

class SecretChat implements TLObject {
  int id;
  int userId;
  var state;
  bool isOutbound;
  int ttl;
  String keyHash;
  int layer;
  dynamic extra;

  /// Represents a secret chat.
  ///[id] Secret chat identifier.
  /// [userId] Identifier of the chat partner.
  /// [state] State of the secret chat.
  /// [isOutbound] True, if the chat was created by the current user; otherwise false.
  /// [ttl] Current message Time To Live setting (self-destruct timer) for the chat, in seconds.
  /// [keyHash] Hash of the currently used key for comparison with the hash of the chat partner's key. This is a string of 36 bytes, which must be used to make a 12x12 square image with a color depth of 4. The first 16 bytes should be used to make a central 8x8 square, while the remaining 20 bytes should be used to construct a 2-pixel-wide border around that square.. Alternatively, the first 32 bytes of the hash can be converted to the hexadecimal format and printed as 32 2-digit hex numbers.
  /// [layer] Secret chat layer; determines features supported by the other client. Video notes are supported if the layer
  SecretChat(
      {this.id,
      this.userId,
      this.state,
      this.isOutbound,
      this.ttl,
      this.keyHash,
      this.layer});

  /// Parse from a json
  SecretChat.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.userId = json['user_id'];
    this.state = SecretChatState.fromJson(json['state'] ?? <String, dynamic>{});
    this.isOutbound = json['is_outbound'];
    this.ttl = json['ttl'];
    this.keyHash = json['key_hash'];
    this.layer = json['layer'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'id': this.id,
      'user_id': this.userId,
      'state': this.state.toJson(),
      'is_outbound': this.isOutbound,
      'ttl': this.ttl,
      'key_hash': this.keyHash,
      'layer': this.layer
    };
  }

  static const String CONSTRUCTOR = 'secretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
