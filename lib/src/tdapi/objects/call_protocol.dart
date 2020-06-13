part of '../tdapi.dart';

class CallProtocol extends TdObject {
  bool udpP2p;
  bool udpReflector;
  int minLayer;
  int maxLayer;
  List<List<String>> libraryVersions;

  /// Specifies the supported call protocols. 
  /// [udpP2p] True, if UDP peer-to-peer connections are supported. 
  /// [udpReflector] True, if connection through UDP reflectors is supported. 
  /// [minLayer] The minimum supported API layer; use 65. 
  /// [maxLayer] The maximum supported API layer; use 65. 
  /// [libraryVersions] List of supported libtgvoip versions
  CallProtocol({this.udpP2p,
    this.udpReflector,
    this.minLayer,
    this.maxLayer,
    this.libraryVersions});

  /// Parse from a json
  CallProtocol.fromJson(Map<String, dynamic> json)  {
    this.udpP2p = json['udp_p2p'];
    this.udpReflector = json['udp_reflector'];
    this.minLayer = json['min_layer'];
    this.maxLayer = json['max_layer'];
    this.libraryVersions = List<List<String>>.from((json['library_versions'] ?? []).map((item) => List<String>.from((item ?? []).map((innerItem) => innerItem).toList())).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "udp_p2p": this.udpP2p,
      "udp_reflector": this.udpReflector,
      "min_layer": this.minLayer,
      "max_layer": this.maxLayer,
      "library_versions": this.libraryVersions.map((i) => i.map((ii) => ii).toList()).toList(),
    };
  }

  static const CONSTRUCTOR = 'callProtocol';
}