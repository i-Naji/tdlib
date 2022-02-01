part of '../tdapi.dart';

class ChatJoinRequests extends TdObject {

  /// Contains a list of requests to join a chat
  const ChatJoinRequests({
    required this.totalCount,
    required this.requests,
    this.extra,
    this.clientId,
  });
  
  /// [totalCount] Approximate total count of requests found 
  final int totalCount;

  /// [requests] List of the requests
  final List<ChatJoinRequest> requests;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatJoinRequests.fromJson(Map<String, dynamic> json) => ChatJoinRequests(
    totalCount: json['total_count'],
    requests: List<ChatJoinRequest>.from((json['requests'] ?? []).map((item) => ChatJoinRequest.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "total_count": totalCount,
      "requests": requests.map((i) => i.toJson()).toList(),
    };
  }
  
  ChatJoinRequests copyWith({
    int? totalCount,
    List<ChatJoinRequest>? requests,
    dynamic extra,
    int? clientId,
  }) => ChatJoinRequests(
    totalCount: totalCount ?? this.totalCount,
    requests: requests ?? this.requests,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'chatJoinRequests';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
