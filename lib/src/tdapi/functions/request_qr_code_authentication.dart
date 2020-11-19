part of '../tdapi.dart';

class RequestQrCodeAuthentication extends TdFunction {
  /// Requests QR code authentication by scanning a QR code on another logged in device. Works only when the current authorization state is authorizationStateWaitPhoneNumber,. or if there is no pending authentication query and the current authorization state is authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword
  RequestQrCodeAuthentication({this.otherUserIds});

  /// [otherUserIds] List of user identifiers of other users currently using the application
  List<int> otherUserIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  RequestQrCodeAuthentication.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "other_user_ids": this.otherUserIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'requestQrCodeAuthentication';

  @override
  String getConstructor() => CONSTRUCTOR;
}
