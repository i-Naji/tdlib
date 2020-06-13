part of '../tdapi.dart';

class RequestQrCodeAuthentication extends TdFunction {
  List<List<int>> otherUserIds;
  dynamic extra;

  /// Requests QR code authentication by scanning a QR code on another logged in device. Works only when the current authorization state is authorizationStateWaitPhoneNumber,. or if there is no pending authentication query and the current authorization state is authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword. 
  /// [otherUserIds] List of user identifiers of other users currently using the client
  RequestQrCodeAuthentication({this.otherUserIds});

  /// Parse from a json
  RequestQrCodeAuthentication.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "other_user_ids": this.otherUserIds.map((i) => i.map((ii) => ii).toList()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'requestQrCodeAuthentication';
}