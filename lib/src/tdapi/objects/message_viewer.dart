part of '../tdapi.dart';

class MessageViewer extends TdObject {
  /// Represents a viewer of a message
  const MessageViewer({
    required this.userId,
    required this.viewDate,
  });

  /// [userId] User identifier of the viewer
  final int userId;

  /// [viewDate] Approximate point in time (Unix timestamp) when the message was viewed
  final int viewDate;

  /// Parse from a json
  factory MessageViewer.fromJson(Map<String, dynamic> json) => MessageViewer(
        userId: json['user_id'],
        viewDate: json['view_date'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "user_id": userId,
      "view_date": viewDate,
    };
  }

  MessageViewer copyWith({
    int? userId,
    int? viewDate,
  }) =>
      MessageViewer(
        userId: userId ?? this.userId,
        viewDate: viewDate ?? this.viewDate,
      );

  static const CONSTRUCTOR = 'messageViewer';

  @override
  String getConstructor() => CONSTRUCTOR;
}
