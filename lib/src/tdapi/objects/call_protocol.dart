part of '../tdapi.dart';

class CallProtocol implements TLObject {
  bool udpP2p;
  bool udpReflector;
  int minLayer;
  int maxLayer;

  /// Specifies the supported call protocols.
  ///[udpP2p] True, if UDP peer-to-peer connections are supported .
  /// [udpReflector] True, if connection through UDP reflectors is supported .
  /// [minLayer] Minimum supported API layer; use 65 .
  /// [maxLayer] Maximum supported API layer; use 65
  CallProtocol({this.udpP2p, this.udpReflector, this.minLayer, this.maxLayer});

  /// Parse from a json
  CallProtocol.fromJson(Map<String, dynamic> json) {
    this.udpP2p = json['udp_p2p'];
    this.udpReflector = json['udp_reflector'];
    this.minLayer = json['min_layer'];
    this.maxLayer = json['max_layer'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "udp_p2p": this.udpP2p,
      "udp_reflector": this.udpReflector,
      "min_layer": this.minLayer,
      "max_layer": this.maxLayer
    };
  }

  static const String CONSTRUCTOR = "callProtocol";

  @override
  String getConstructor() => CONSTRUCTOR;
}
