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
  String jsonData;
  String zoomToken;
  dynamic extra;

  /// A graph data. 
  /// [jsonData] Graph data in JSON format . 
  /// [zoomToken] If non-empty, a token which can be used to receive a zoomed in graph
  StatisticsGraphData({this.jsonData,
    this.zoomToken});

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
  String token;
  dynamic extra;

  /// The graph data to be asynchronously loaded through getChatStatisticsGraph. 
  /// [token] The token to use for data loading
  StatisticsGraphAsync({this.token});

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
  String errorMessage;
  dynamic extra;

  /// An error message to be shown to the user instead of the graph. 
  /// [errorMessage] The error message
  StatisticsGraphError({this.errorMessage});

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