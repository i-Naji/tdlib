part of '../tdapi.dart';

class CallServer extends TdObject {
  /// Describes a server for relaying call data
  CallServer({this.id, this.ipAddress, this.ipv6Address, this.port, this.type});

  /// [id] Server identifier
  int id;

  /// [ipAddress] Server IPv4 address
  String ipAddress;

  /// [ipv6Address] Server IPv6 address
  String ipv6Address;

  /// [port] Server port number
  int port;

  /// [type] Server type
  CallServerType type;

  /// Parse from a json
  CallServer.fromJson(Map<String, dynamic> json) {
    this.id = int.tryParse(json['id'] ?? "");
    this.ipAddress = json['ip_address'];
    this.ipv6Address = json['ipv6_address'];
    this.port = json['port'];
    this.type = CallServerType.fromJson(json['type'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "ip_address": this.ipAddress,
      "ipv6_address": this.ipv6Address,
      "port": this.port,
      "type": this.type == null ? null : this.type.toJson(),
    };
  }

  static const CONSTRUCTOR = 'callServer';

  @override
  String getConstructor() => CONSTRUCTOR;
}
