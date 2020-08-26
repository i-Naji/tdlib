part of '../tdapi.dart';

class CallConnection extends TdObject {
  String id;
  String ip;
  String ipv6;
  int port;
  String peerTag;

  /// Describes the address of UDP reflectors. 
  /// [id] Reflector identifier . 
  /// [ip] IPv4 reflector address . 
  /// [ipv6] IPv6 reflector address . 
  /// [port] Reflector port number . 
  /// [peerTag] Connection peer tag
  CallConnection({this.id,
    this.ip,
    this.ipv6,
    this.port,
    this.peerTag});

  /// Parse from a json
  CallConnection.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
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