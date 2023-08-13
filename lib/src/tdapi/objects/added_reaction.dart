part of '../tdapi.dart';

class AddedReaction extends TdObject {
  /// Represents a reaction applied to a message
  const AddedReaction({
    required this.type,
    required this.senderId,
    required this.date,
  });

  /// [type] Type of the reaction
  final ReactionType type;

  /// [senderId] Identifier of the chat member, applied the reaction
  final MessageSender senderId;

  /// [date] Point in time (Unix timestamp) when the reaction was added
  final int date;

  /// Parse from a json
  factory AddedReaction.fromJson(Map<String, dynamic> json) => AddedReaction(
        type: ReactionType.fromJson(json['type']),
        senderId: MessageSender.fromJson(json['sender_id']),
        date: json['date'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "type": type.toJson(),
      "sender_id": senderId.toJson(),
      "date": date,
    };
  }

  AddedReaction copyWith({
    ReactionType? type,
    MessageSender? senderId,
    int? date,
  }) =>
      AddedReaction(
        type: type ?? this.type,
        senderId: senderId ?? this.senderId,
        date: date ?? this.date,
      );

  static const CONSTRUCTOR = 'addedReaction';

  @override
  String getConstructor() => CONSTRUCTOR;
}
