part of '../tdapi.dart';

class ChatJoinRequest extends TdObject {

  /// Describes a user that sent a join request and waits for administrator approval
  const ChatJoinRequest({
    required this.userId,
    required this.date,
    required this.bio,
  });
  
  /// [userId] User identifier 
  final int userId;

  /// [date] Point in time (Unix timestamp) when the user sent the join request 
  final int date;

  /// [bio] A short bio of the user
  final String bio;
  
  /// Parse from a json
  factory ChatJoinRequest.fromJson(Map<String, dynamic> json) => ChatJoinRequest(
    userId: json['user_id'],
    date: json['date'],
    bio: json['bio'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "date": date,
      "bio": bio,
    };
  }
  
  ChatJoinRequest copyWith({
    int? userId,
    int? date,
    String? bio,
  }) => ChatJoinRequest(
    userId: userId ?? this.userId,
    date: date ?? this.date,
    bio: bio ?? this.bio,
  );

  static const CONSTRUCTOR = 'chatJoinRequest';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
