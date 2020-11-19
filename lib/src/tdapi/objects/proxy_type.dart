part of '../tdapi.dart';

class ProxyType extends TdObject {
  /// Describes the type of a proxy server
  ProxyType();

  /// a ProxyType return type can be :
  /// * ProxyTypeSocks5
  /// * ProxyTypeHttp
  /// * ProxyTypeMtproto
  factory ProxyType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ProxyTypeSocks5.CONSTRUCTOR:
        return ProxyTypeSocks5.fromJson(json);
      case ProxyTypeHttp.CONSTRUCTOR:
        return ProxyTypeHttp.fromJson(json);
      case ProxyTypeMtproto.CONSTRUCTOR:
        return ProxyTypeMtproto.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'proxyType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ProxyTypeSocks5 extends ProxyType {
  /// A SOCKS5 proxy server
  ProxyTypeSocks5({this.username, this.password});

  /// [username] Username for logging in; may be empty
  String username;

  /// [password] Password for logging in; may be empty
  String password;

  /// Parse from a json
  ProxyTypeSocks5.fromJson(Map<String, dynamic> json) {
    this.username = json['username'];
    this.password = json['password'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "username": this.username,
      "password": this.password,
    };
  }

  static const CONSTRUCTOR = 'proxyTypeSocks5';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ProxyTypeHttp extends ProxyType {
  /// A HTTP transparent proxy server
  ProxyTypeHttp({this.username, this.password, this.httpOnly});

  /// [username] Username for logging in; may be empty
  String username;

  /// [password] Password for logging in; may be empty
  String password;

  /// [httpOnly] Pass true if the proxy supports only HTTP requests and doesn't support transparent TCP connections via HTTP CONNECT method
  bool httpOnly;

  /// Parse from a json
  ProxyTypeHttp.fromJson(Map<String, dynamic> json) {
    this.username = json['username'];
    this.password = json['password'];
    this.httpOnly = json['http_only'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "username": this.username,
      "password": this.password,
      "http_only": this.httpOnly,
    };
  }

  static const CONSTRUCTOR = 'proxyTypeHttp';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ProxyTypeMtproto extends ProxyType {
  /// An MTProto proxy server
  ProxyTypeMtproto({this.secret});

  /// [secret] The proxy's secret in hexadecimal encoding
  String secret;

  /// Parse from a json
  ProxyTypeMtproto.fromJson(Map<String, dynamic> json) {
    this.secret = json['secret'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "secret": this.secret,
    };
  }

  static const CONSTRUCTOR = 'proxyTypeMtproto';

  @override
  String getConstructor() => CONSTRUCTOR;
}
