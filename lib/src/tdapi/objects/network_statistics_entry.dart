part of '../tdapi.dart';

class NetworkStatisticsEntry extends TdObject {
  /// Contains statistics about network usage
  NetworkStatisticsEntry();

  /// a NetworkStatisticsEntry return type can be :
  /// * NetworkStatisticsEntryFile
  /// * NetworkStatisticsEntryCall
  factory NetworkStatisticsEntry.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case NetworkStatisticsEntryFile.CONSTRUCTOR:
        return NetworkStatisticsEntryFile.fromJson(json);
      case NetworkStatisticsEntryCall.CONSTRUCTOR:
        return NetworkStatisticsEntryCall.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'networkStatisticsEntry';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkStatisticsEntryFile extends NetworkStatisticsEntry {
  /// Contains information about the total amount of data that was used to send and receive files
  NetworkStatisticsEntryFile(
      {this.fileType, this.networkType, this.sentBytes, this.receivedBytes});

  /// [fileType] Type of the file the data is part of
  FileType fileType;

  /// [networkType] Type of the network the data was sent through. Call setNetworkType to maintain the actual network type
  NetworkType networkType;

  /// [sentBytes] Total number of bytes sent
  int sentBytes;

  /// [receivedBytes] Total number of bytes received
  int receivedBytes;

  /// Parse from a json
  NetworkStatisticsEntryFile.fromJson(Map<String, dynamic> json) {
    this.fileType = FileType.fromJson(json['file_type'] ?? <String, dynamic>{});
    this.networkType =
        NetworkType.fromJson(json['network_type'] ?? <String, dynamic>{});
    this.sentBytes = json['sent_bytes'];
    this.receivedBytes = json['received_bytes'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_type": this.fileType == null ? null : this.fileType.toJson(),
      "network_type":
          this.networkType == null ? null : this.networkType.toJson(),
      "sent_bytes": this.sentBytes,
      "received_bytes": this.receivedBytes,
    };
  }

  static const CONSTRUCTOR = 'networkStatisticsEntryFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class NetworkStatisticsEntryCall extends NetworkStatisticsEntry {
  /// Contains information about the total amount of data that was used for calls
  NetworkStatisticsEntryCall(
      {this.networkType, this.sentBytes, this.receivedBytes, this.duration});

  /// [networkType] Type of the network the data was sent through. Call setNetworkType to maintain the actual network type
  NetworkType networkType;

  /// [sentBytes] Total number of bytes sent
  int sentBytes;

  /// [receivedBytes] Total number of bytes received
  int receivedBytes;

  /// [duration] Total call duration, in seconds
  double duration;

  /// Parse from a json
  NetworkStatisticsEntryCall.fromJson(Map<String, dynamic> json) {
    this.networkType =
        NetworkType.fromJson(json['network_type'] ?? <String, dynamic>{});
    this.sentBytes = json['sent_bytes'];
    this.receivedBytes = json['received_bytes'];
    this.duration = json['duration'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "network_type":
          this.networkType == null ? null : this.networkType.toJson(),
      "sent_bytes": this.sentBytes,
      "received_bytes": this.receivedBytes,
      "duration": this.duration,
    };
  }

  static const CONSTRUCTOR = 'networkStatisticsEntryCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
