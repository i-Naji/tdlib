part of '../tdapi.dart';

class MessageSendOptions extends TdObject {
  /// Options to be used when a message is sent
  const MessageSendOptions({
    required this.disableNotification,
    required this.fromBackground,
    required this.protectContent,
    required this.updateOrderOfInstalledStickerSets,
    this.schedulingState,
    required this.sendingId,
  });

  /// [disableNotification] Pass true to disable notification for the message
  final bool disableNotification;

  /// [fromBackground] Pass true if the message is sent from the background
  final bool fromBackground;

  /// [protectContent] Pass true if the content of the message must be protected from forwarding and saving; for bots only
  final bool protectContent;

  /// [updateOrderOfInstalledStickerSets] Pass true if the user explicitly chosen a sticker or a custom emoji from an installed sticker set; applicable only to sendMessage and sendMessageAlbum
  final bool updateOrderOfInstalledStickerSets;

  /// [schedulingState] Message scheduling state; pass null to send message immediately. Messages sent to a secret chat, live location messages and self-destructing messages can't be scheduled
  final MessageSchedulingState? schedulingState;

  /// [sendingId] Non-persistent identifier, which will be returned back in messageSendingStatePending object and can be used to match sent messages and corresponding updateNewMessage updates
  final int sendingId;

  /// Parse from a json
  factory MessageSendOptions.fromJson(Map<String, dynamic> json) =>
      MessageSendOptions(
        disableNotification: json['disable_notification'],
        fromBackground: json['from_background'],
        protectContent: json['protect_content'],
        updateOrderOfInstalledStickerSets:
            json['update_order_of_installed_sticker_sets'],
        schedulingState: json['scheduling_state'] == null
            ? null
            : MessageSchedulingState.fromJson(json['scheduling_state']),
        sendingId: json['sending_id'],
      );

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "disable_notification": disableNotification,
      "from_background": fromBackground,
      "protect_content": protectContent,
      "update_order_of_installed_sticker_sets":
          updateOrderOfInstalledStickerSets,
      "scheduling_state": schedulingState?.toJson(),
      "sending_id": sendingId,
    };
  }

  MessageSendOptions copyWith({
    bool? disableNotification,
    bool? fromBackground,
    bool? protectContent,
    bool? updateOrderOfInstalledStickerSets,
    MessageSchedulingState? schedulingState,
    int? sendingId,
  }) =>
      MessageSendOptions(
        disableNotification: disableNotification ?? this.disableNotification,
        fromBackground: fromBackground ?? this.fromBackground,
        protectContent: protectContent ?? this.protectContent,
        updateOrderOfInstalledStickerSets: updateOrderOfInstalledStickerSets ??
            this.updateOrderOfInstalledStickerSets,
        schedulingState: schedulingState ?? this.schedulingState,
        sendingId: sendingId ?? this.sendingId,
      );

  static const CONSTRUCTOR = 'messageSendOptions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
