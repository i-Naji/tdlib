part of '../tdapi.dart';

class StatisticsGraph extends TdObject {

  /// Describes a statistics graph
  StatisticsGraph();

  

  /// a StatisticsGraph return type can be :
  /// * StatisticsGraphData
  /// * StatisticsGraphAsync
  /// * StatisticsGraphError
  factory StatisticsGraph.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case StatisticsGraphData.CONSTRUCTOR:
        return StatisticsGraphData.fromJson(json);
      case StatisticsGraphAsync.CONSTRUCTOR:
        return StatisticsGraphAsync.fromJson(json);
      case StatisticsGraphError.CONSTRUCTOR:
        return StatisticsGraphError.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'statisticsGraph';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class StatisticsGraphData extends StatisticsGraph {

  /// A graph data
  StatisticsGraphData({this.jsonData,
    this.zoomToken});

  /// [jsonData] Graph data in JSON format 
  String jsonData;

  /// [zoomToken] If non-empty, a token which can be used to receive a zoomed in graph
  String zoomToken;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  StatisticsGraphData.fromJson(Map<String, dynamic> json)  {
    this.jsonData = json['json_data'];
    this.zoomToken = json['zoom_token'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "json_data": this.jsonData,
      "zoom_token": this.zoomToken,
    };
  }

  static const CONSTRUCTOR = 'statisticsGraphData';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class StatisticsGraphAsync extends StatisticsGraph {

  /// The graph data to be asynchronously loaded through getChatStatisticsGraph
  StatisticsGraphAsync({this.token});

  /// [token] The token to use for data loading
  String token;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  StatisticsGraphAsync.fromJson(Map<String, dynamic> json)  {
    this.token = json['token'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "token": this.token,
    };
  }

  static const CONSTRUCTOR = 'statisticsGraphAsync';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class StatisticsGraphError extends StatisticsGraph {

  /// An error message to be shown to the user instead of the graph
  StatisticsGraphError({this.errorMessage});

  /// [errorMessage] The error message
  String errorMessage;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  StatisticsGraphError.fromJson(Map<String, dynamic> json)  {
    this.errorMessage = json['error_message'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "error_message": this.errorMessage,
    };
  }

  static const CONSTRUCTOR = 'statisticsGraphError';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}