part of '../tdapi.dart';

class SponsoredMessage extends TdObject {
  /// Describes a sponsored message
  const SponsoredMessage({
    required this.messageId,
    required this.isRecommended,
    required this.content,
    required this.sponsor,
    required this.additionalInfo,
  });

  /// [messageId] Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages
  final int messageId;

  /// [isRecommended] True, if the message needs to be labeled as "recommended" instead of "sponsored"
  final bool isRecommended;

  /// [content] Content of the message. Currently, can be only of the type messageText
  final MessageContent content;

  /// [sponsor] Information about the sponsor of the message
  final MessageSponsor sponsor;

  /// [additionalInfo] If non-empty, additional information about the sponsored message to be shown along with the message
  final String additionalInfo;

  /// Parse from a json
  factory SponsoredMessage.fromJson(Map<String, dynamic> json) =>
      SponsoredMessage(
        messageId: json['message_id'],
        isRecommended: json['is_recommended'],
        content: MessageContent.fromJson(json['content']),
        sponsor: MessageSponsor.fromJson(json['sponsor']),
        additionalInfo: json['additional_info'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_id": messageId,
      "is_recommended": isRecommended,
      "content": content.toJson(),
      "sponsor": sponsor.toJson(),
      "additional_info": additionalInfo,
    };
  }

  SponsoredMessage copyWith({
    int? messageId,
    bool? isRecommended,
    MessageContent? content,
    MessageSponsor? sponsor,
    String? additionalInfo,
  }) =>
      SponsoredMessage(
        messageId: messageId ?? this.messageId,
        isRecommended: isRecommended ?? this.isRecommended,
        content: content ?? this.content,
        sponsor: sponsor ?? this.sponsor,
        additionalInfo: additionalInfo ?? this.additionalInfo,
      );

  static const CONSTRUCTOR = 'sponsoredMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
