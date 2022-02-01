part of '../tdapi.dart';

class CallProtocol extends TdObject {

  /// Specifies the supported call protocols
  const CallProtocol({
    required this.udpP2p,
    required this.udpReflector,
    required this.minLayer,
    required this.maxLayer,
    required this.libraryVersions,
  });
  
  /// [udpP2p] True, if UDP peer-to-peer connections are supported
  final bool udpP2p;

  /// [udpReflector] True, if connection through UDP reflectors is supported
  final bool udpReflector;

  /// [minLayer] The minimum supported API layer; use 65
  final int minLayer;

  /// [maxLayer] The maximum supported API layer; use 65
  final int maxLayer;

  /// [libraryVersions] List of supported tgcalls versions
  final List<String> libraryVersions;
  
  /// Parse from a json
  factory CallProtocol.fromJson(Map<String, dynamic> json) => CallProtocol(
    udpP2p: json['udp_p2p'],
    udpReflector: json['udp_reflector'],
    minLayer: json['min_layer'],
    maxLayer: json['max_layer'],
    libraryVersions: List<String>.from((json['library_versions'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "udp_p2p": udpP2p,
      "udp_reflector": udpReflector,
      "min_layer": minLayer,
      "max_layer": maxLayer,
      "library_versions": libraryVersions.map((i) => i).toList(),
    };
  }
  
  CallProtocol copyWith({
    bool? udpP2p,
    bool? udpReflector,
    int? minLayer,
    int? maxLayer,
    List<String>? libraryVersions,
  }) => CallProtocol(
    udpP2p: udpP2p ?? this.udpP2p,
    udpReflector: udpReflector ?? this.udpReflector,
    minLayer: minLayer ?? this.minLayer,
    maxLayer: maxLayer ?? this.maxLayer,
    libraryVersions: libraryVersions ?? this.libraryVersions,
  );

  static const CONSTRUCTOR = 'callProtocol';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
