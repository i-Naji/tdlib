part of '../tdapi.dart';

class NetworkStatisticsEntry extends TdObject {

  /// Contains statistics about network usage
  const NetworkStatisticsEntry();
  
  /// a NetworkStatisticsEntry return type can be :
  /// * [NetworkStatisticsEntryFile]
  /// * [NetworkStatisticsEntryCall]
  factory NetworkStatisticsEntry.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case NetworkStatisticsEntryFile.CONSTRUCTOR:
        return NetworkStatisticsEntryFile.fromJson(json);
      case NetworkStatisticsEntryCall.CONSTRUCTOR:
        return NetworkStatisticsEntryCall.fromJson(json);
      default:
        return const NetworkStatisticsEntry();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  NetworkStatisticsEntry copyWith() => const NetworkStatisticsEntry();

  static const CONSTRUCTOR = 'networkStatisticsEntry';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class NetworkStatisticsEntryFile extends NetworkStatisticsEntry {

  /// Contains information about the total amount of data that was used to send and receive files
  const NetworkStatisticsEntryFile({
    this.fileType,
    required this.networkType,
    required this.sentBytes,
    required this.receivedBytes,
  });
  
  /// [fileType] Type of the file the data is part of; pass null if the data isn't related to files
  final FileType? fileType;

  /// [networkType] Type of the network the data was sent through. Call setNetworkType to maintain the actual network type
  final NetworkType networkType;

  /// [sentBytes] Total number of bytes sent
  final int sentBytes;

  /// [receivedBytes] Total number of bytes received
  final int receivedBytes;
  
  /// Parse from a json
  factory NetworkStatisticsEntryFile.fromJson(Map<String, dynamic> json) => NetworkStatisticsEntryFile(
    fileType: json['file_type'] == null ? null : FileType.fromJson(json['file_type']),
    networkType: NetworkType.fromJson(json['network_type']),
    sentBytes: json['sent_bytes'],
    receivedBytes: json['received_bytes'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "file_type": fileType?.toJson(),
      "network_type": networkType.toJson(),
      "sent_bytes": sentBytes,
      "received_bytes": receivedBytes,
    };
  }
  
  @override
  NetworkStatisticsEntryFile copyWith({
    FileType? fileType,
    NetworkType? networkType,
    int? sentBytes,
    int? receivedBytes,
  }) => NetworkStatisticsEntryFile(
    fileType: fileType ?? this.fileType,
    networkType: networkType ?? this.networkType,
    sentBytes: sentBytes ?? this.sentBytes,
    receivedBytes: receivedBytes ?? this.receivedBytes,
  );

  static const CONSTRUCTOR = 'networkStatisticsEntryFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class NetworkStatisticsEntryCall extends NetworkStatisticsEntry {

  /// Contains information about the total amount of data that was used for calls
  const NetworkStatisticsEntryCall({
    required this.networkType,
    required this.sentBytes,
    required this.receivedBytes,
    required this.duration,
  });
  
  /// [networkType] Type of the network the data was sent through. Call setNetworkType to maintain the actual network type
  final NetworkType networkType;

  /// [sentBytes] Total number of bytes sent
  final int sentBytes;

  /// [receivedBytes] Total number of bytes received
  final int receivedBytes;

  /// [duration] Total call duration, in seconds
  final double duration;
  
  /// Parse from a json
  factory NetworkStatisticsEntryCall.fromJson(Map<String, dynamic> json) => NetworkStatisticsEntryCall(
    networkType: NetworkType.fromJson(json['network_type']),
    sentBytes: json['sent_bytes'],
    receivedBytes: json['received_bytes'],
    duration: json['duration'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "network_type": networkType.toJson(),
      "sent_bytes": sentBytes,
      "received_bytes": receivedBytes,
      "duration": duration,
    };
  }
  
  @override
  NetworkStatisticsEntryCall copyWith({
    NetworkType? networkType,
    int? sentBytes,
    int? receivedBytes,
    double? duration,
  }) => NetworkStatisticsEntryCall(
    networkType: networkType ?? this.networkType,
    sentBytes: sentBytes ?? this.sentBytes,
    receivedBytes: receivedBytes ?? this.receivedBytes,
    duration: duration ?? this.duration,
  );

  static const CONSTRUCTOR = 'networkStatisticsEntryCall';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
