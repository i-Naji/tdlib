part of '../tdapi.dart';

class StatisticalGraph extends TdObject {

  /// Describes a statistical graph
  const StatisticalGraph();
  
  /// a StatisticalGraph return type can be :
  /// * [StatisticalGraphData]
  /// * [StatisticalGraphAsync]
  /// * [StatisticalGraphError]
  factory StatisticalGraph.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case StatisticalGraphData.CONSTRUCTOR:
        return StatisticalGraphData.fromJson(json);
      case StatisticalGraphAsync.CONSTRUCTOR:
        return StatisticalGraphAsync.fromJson(json);
      case StatisticalGraphError.CONSTRUCTOR:
        return StatisticalGraphError.fromJson(json);
      default:
        return const StatisticalGraph();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  StatisticalGraph copyWith() => const StatisticalGraph();

  static const CONSTRUCTOR = 'statisticalGraph';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StatisticalGraphData extends StatisticalGraph {

  /// A graph data
  const StatisticalGraphData({
    required this.jsonData,
    required this.zoomToken,
    this.extra,
    this.clientId,
  });
  
  /// [jsonData] Graph data in JSON format 
  final String jsonData;

  /// [zoomToken] If non-empty, a token which can be used to receive a zoomed in graph
  final String zoomToken;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StatisticalGraphData.fromJson(Map<String, dynamic> json) => StatisticalGraphData(
    jsonData: json['json_data'],
    zoomToken: json['zoom_token'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "json_data": jsonData,
      "zoom_token": zoomToken,
    };
  }
  
  @override
  StatisticalGraphData copyWith({
    String? jsonData,
    String? zoomToken,
    dynamic extra,
    int? clientId,
  }) => StatisticalGraphData(
    jsonData: jsonData ?? this.jsonData,
    zoomToken: zoomToken ?? this.zoomToken,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'statisticalGraphData';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StatisticalGraphAsync extends StatisticalGraph {

  /// The graph data to be asynchronously loaded through getStatisticalGraph
  const StatisticalGraphAsync({
    required this.token,
    this.extra,
    this.clientId,
  });
  
  /// [token] The token to use for data loading
  final String token;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StatisticalGraphAsync.fromJson(Map<String, dynamic> json) => StatisticalGraphAsync(
    token: json['token'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "token": token,
    };
  }
  
  @override
  StatisticalGraphAsync copyWith({
    String? token,
    dynamic extra,
    int? clientId,
  }) => StatisticalGraphAsync(
    token: token ?? this.token,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'statisticalGraphAsync';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class StatisticalGraphError extends StatisticalGraph {

  /// An error message to be shown to the user instead of the graph
  const StatisticalGraphError({
    required this.errorMessage,
    this.extra,
    this.clientId,
  });
  
  /// [errorMessage] The error message
  final String errorMessage;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StatisticalGraphError.fromJson(Map<String, dynamic> json) => StatisticalGraphError(
    errorMessage: json['error_message'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "error_message": errorMessage,
    };
  }
  
  @override
  StatisticalGraphError copyWith({
    String? errorMessage,
    dynamic extra,
    int? clientId,
  }) => StatisticalGraphError(
    errorMessage: errorMessage ?? this.errorMessage,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'statisticalGraphError';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
