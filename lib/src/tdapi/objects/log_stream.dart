part of '../tdapi.dart';

class LogStream implements TLObject {
  /// Describes a stream to which TDLib internal log is written
  LogStream();

  /// a LogStream return type can be :
  /// * LogStreamDefault
  /// * LogStreamEmpty
  /// * LogStreamFile
  factory LogStream.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case LogStreamDefault.CONSTRUCTOR:
        return LogStreamDefault.fromJson(json);
      case LogStreamEmpty.CONSTRUCTOR:
        return LogStreamEmpty.fromJson(json);
      case LogStreamFile.CONSTRUCTOR:
        return LogStreamFile.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'logStream';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LogStreamDefault implements LogStream {
  dynamic extra;

  /// The log is written to stderr or an OS specific log.
  ///
  LogStreamDefault();

  /// Parse from a json
  LogStreamDefault.fromJson(Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'logStreamDefault';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LogStreamFile implements LogStream {
  String path;
  int maxFileSize;
  dynamic extra;

  /// The log is written to a file.
  ///[path] Path to the file to where the internal TDLib log will be written .
  /// [maxFileSize] Maximum size of the file to where the internal TDLib log is written before the file will be auto-rotated
  LogStreamFile({this.path, this.maxFileSize});

  /// Parse from a json
  LogStreamFile.fromJson(Map<String, dynamic> json) {
    this.path = json['path'];
    this.maxFileSize = json['max_file_size'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '@type': CONSTRUCTOR,
      'path': this.path,
      'max_file_size': this.maxFileSize
    };
  }

  static const String CONSTRUCTOR = 'logStreamFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LogStreamEmpty implements LogStream {
  dynamic extra;

  /// The log is written nowhere.
  ///
  LogStreamEmpty();

  /// Parse from a json
  LogStreamEmpty.fromJson(Map<String, dynamic> json) {
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'logStreamEmpty';

  @override
  String getConstructor() => CONSTRUCTOR;
}
