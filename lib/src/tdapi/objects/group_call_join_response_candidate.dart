part of '../tdapi.dart';

class GroupCallJoinResponseCandidate extends TdObject {
  /// Describes a join response candidate for interaction with tgcalls
  GroupCallJoinResponseCandidate(
      {this.port,
      this.protocol,
      this.network,
      this.generation,
      this.id,
      this.component,
      this.foundation,
      this.priority,
      this.ip,
      this.type,
      this.tcpType,
      this.relAddr,
      this.relPort});

  /// [port] Value of the field port
  String port;

  /// [protocol] Value of the field protocol
  String protocol;

  /// [network] Value of the field network
  String network;

  /// [generation] Value of the field generation
  String generation;

  /// [id] Value of the field id
  String id;

  /// [component] Value of the field component
  String component;

  /// [foundation] Value of the field foundation
  String foundation;

  /// [priority] Value of the field priority
  String priority;

  /// [ip] Value of the field ip
  String ip;

  /// [type] Value of the field type
  String type;

  /// [tcpType] Value of the field tcp_type
  String tcpType;

  /// [relAddr] Value of the field rel_addr
  String relAddr;

  /// [relPort] Value of the field rel_port
  String relPort;

  /// Parse from a json
  GroupCallJoinResponseCandidate.fromJson(Map<String, dynamic> json) {
    this.port = json['port'];
    this.protocol = json['protocol'];
    this.network = json['network'];
    this.generation = json['generation'];
    this.id = json['id'];
    this.component = json['component'];
    this.foundation = json['foundation'];
    this.priority = json['priority'];
    this.ip = json['ip'];
    this.type = json['type'];
    this.tcpType = json['tcp_type'];
    this.relAddr = json['rel_addr'];
    this.relPort = json['rel_port'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "port": this.port,
      "protocol": this.protocol,
      "network": this.network,
      "generation": this.generation,
      "id": this.id,
      "component": this.component,
      "foundation": this.foundation,
      "priority": this.priority,
      "ip": this.ip,
      "type": this.type,
      "tcp_type": this.tcpType,
      "rel_addr": this.relAddr,
      "rel_port": this.relPort,
    };
  }

  static const CONSTRUCTOR = 'groupCallJoinResponseCandidate';

  @override
  String getConstructor() => CONSTRUCTOR;
}
