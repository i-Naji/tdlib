part of '../tdapi.dart';

class CallConnection extends TdObject {

  /// Describes the address of UDP reflectors
  CallConnection({this.id,
    this.ip,
    this.ipv6,
    this.port,
    this.peerTag});

  /// [id] Reflector identifier 
  int id;

  /// [ip] IPv4 reflector address 
  String ip;

  /// [ipv6] IPv6 reflector address 
  String ipv6;

  /// [port] Reflector port number 
  int port;

  /// [peerTag] Connection peer tag
  String peerTag;

  /// Parse from a json
  CallConnection.fromJson(Map<String, dynamic> json)  {
    this.id = int.tryParse(json['id'] ?? "");
    this.ip = json['ip'];
    this.ipv6 = json['ipv6'];
    this.port = json['port'];
    this.peerTag = json['peer_tag'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "ip": this.ip,
      "ipv6": this.ipv6,
      "port": this.port,
      "peer_tag": this.peerTag,
    };
  }

  static const CONSTRUCTOR = 'callConnection';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}