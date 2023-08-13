part of '../tdapi.dart';

class SetDefaultMessageAutoDeleteTime extends TdFunction {
  /// Changes the default message auto-delete time for new chats
  const SetDefaultMessageAutoDeleteTime({
    required this.messageAutoDeleteTime,
  });

  /// [messageAutoDeleteTime] New default message auto-delete time; must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically
  final MessageAutoDeleteTime messageAutoDeleteTime;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "message_auto_delete_time": messageAutoDeleteTime.toJson(),
      "@extra": extra,
    };
  }

  SetDefaultMessageAutoDeleteTime copyWith({
    MessageAutoDeleteTime? messageAutoDeleteTime,
  }) =>
      SetDefaultMessageAutoDeleteTime(
        messageAutoDeleteTime:
            messageAutoDeleteTime ?? this.messageAutoDeleteTime,
      );

  static const CONSTRUCTOR = 'setDefaultMessageAutoDeleteTime';

  @override
  String getConstructor() => CONSTRUCTOR;
}
