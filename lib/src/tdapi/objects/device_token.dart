part of '../tdapi.dart';

class DeviceToken extends TdObject {

  /// Represents a data needed to subscribe for push notifications through registerDevice method. To use specific push notification service, the correct application platform must be specified and a valid server authentication data must be uploaded at https://my.telegram.org
  const DeviceToken();
  
  /// a DeviceToken return type can be :
  /// * [DeviceTokenFirebaseCloudMessaging]
  /// * [DeviceTokenApplePush]
  /// * [DeviceTokenApplePushVoIP]
  /// * [DeviceTokenWindowsPush]
  /// * [DeviceTokenMicrosoftPush]
  /// * [DeviceTokenMicrosoftPushVoIP]
  /// * [DeviceTokenWebPush]
  /// * [DeviceTokenSimplePush]
  /// * [DeviceTokenUbuntuPush]
  /// * [DeviceTokenBlackBerryPush]
  /// * [DeviceTokenTizenPush]
  factory DeviceToken.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case DeviceTokenFirebaseCloudMessaging.CONSTRUCTOR:
        return DeviceTokenFirebaseCloudMessaging.fromJson(json);
      case DeviceTokenApplePush.CONSTRUCTOR:
        return DeviceTokenApplePush.fromJson(json);
      case DeviceTokenApplePushVoIP.CONSTRUCTOR:
        return DeviceTokenApplePushVoIP.fromJson(json);
      case DeviceTokenWindowsPush.CONSTRUCTOR:
        return DeviceTokenWindowsPush.fromJson(json);
      case DeviceTokenMicrosoftPush.CONSTRUCTOR:
        return DeviceTokenMicrosoftPush.fromJson(json);
      case DeviceTokenMicrosoftPushVoIP.CONSTRUCTOR:
        return DeviceTokenMicrosoftPushVoIP.fromJson(json);
      case DeviceTokenWebPush.CONSTRUCTOR:
        return DeviceTokenWebPush.fromJson(json);
      case DeviceTokenSimplePush.CONSTRUCTOR:
        return DeviceTokenSimplePush.fromJson(json);
      case DeviceTokenUbuntuPush.CONSTRUCTOR:
        return DeviceTokenUbuntuPush.fromJson(json);
      case DeviceTokenBlackBerryPush.CONSTRUCTOR:
        return DeviceTokenBlackBerryPush.fromJson(json);
      case DeviceTokenTizenPush.CONSTRUCTOR:
        return DeviceTokenTizenPush.fromJson(json);
      default:
        return const DeviceToken();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  DeviceToken copyWith() => const DeviceToken();

  static const CONSTRUCTOR = 'deviceToken';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class DeviceTokenFirebaseCloudMessaging extends DeviceToken {

  /// A token for Firebase Cloud Messaging
  const DeviceTokenFirebaseCloudMessaging({
    required this.token,
    required this.encrypt,
  });
  
  /// [token] Device registration token; may be empty to deregister a device 
  final String token;

  /// [encrypt] True, if push notifications must be additionally encrypted
  final bool encrypt;
  
  /// Parse from a json
  factory DeviceTokenFirebaseCloudMessaging.fromJson(Map<String, dynamic> json) => DeviceTokenFirebaseCloudMessaging(
    token: json['token'],
    encrypt: json['encrypt'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "token": token,
      "encrypt": encrypt,
    };
  }
  
  @override
  DeviceTokenFirebaseCloudMessaging copyWith({
    String? token,
    bool? encrypt,
  }) => DeviceTokenFirebaseCloudMessaging(
    token: token ?? this.token,
    encrypt: encrypt ?? this.encrypt,
  );

  static const CONSTRUCTOR = 'deviceTokenFirebaseCloudMessaging';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class DeviceTokenApplePush extends DeviceToken {

  /// A token for Apple Push Notification service
  const DeviceTokenApplePush({
    required this.deviceToken,
    required this.isAppSandbox,
  });
  
  /// [deviceToken] Device token; may be empty to deregister a device 
  final String deviceToken;

  /// [isAppSandbox] True, if App Sandbox is enabled
  final bool isAppSandbox;
  
  /// Parse from a json
  factory DeviceTokenApplePush.fromJson(Map<String, dynamic> json) => DeviceTokenApplePush(
    deviceToken: json['device_token'],
    isAppSandbox: json['is_app_sandbox'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "device_token": deviceToken,
      "is_app_sandbox": isAppSandbox,
    };
  }
  
  @override
  DeviceTokenApplePush copyWith({
    String? deviceToken,
    bool? isAppSandbox,
  }) => DeviceTokenApplePush(
    deviceToken: deviceToken ?? this.deviceToken,
    isAppSandbox: isAppSandbox ?? this.isAppSandbox,
  );

  static const CONSTRUCTOR = 'deviceTokenApplePush';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class DeviceTokenApplePushVoIP extends DeviceToken {

  /// A token for Apple Push Notification service VoIP notifications
  const DeviceTokenApplePushVoIP({
    required this.deviceToken,
    required this.isAppSandbox,
    required this.encrypt,
  });
  
  /// [deviceToken] Device token; may be empty to deregister a device 
  final String deviceToken;

  /// [isAppSandbox] True, if App Sandbox is enabled 
  final bool isAppSandbox;

  /// [encrypt] True, if push notifications must be additionally encrypted
  final bool encrypt;
  
  /// Parse from a json
  factory DeviceTokenApplePushVoIP.fromJson(Map<String, dynamic> json) => DeviceTokenApplePushVoIP(
    deviceToken: json['device_token'],
    isAppSandbox: json['is_app_sandbox'],
    encrypt: json['encrypt'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "device_token": deviceToken,
      "is_app_sandbox": isAppSandbox,
      "encrypt": encrypt,
    };
  }
  
  @override
  DeviceTokenApplePushVoIP copyWith({
    String? deviceToken,
    bool? isAppSandbox,
    bool? encrypt,
  }) => DeviceTokenApplePushVoIP(
    deviceToken: deviceToken ?? this.deviceToken,
    isAppSandbox: isAppSandbox ?? this.isAppSandbox,
    encrypt: encrypt ?? this.encrypt,
  );

  static const CONSTRUCTOR = 'deviceTokenApplePushVoIP';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class DeviceTokenWindowsPush extends DeviceToken {

  /// A token for Windows Push Notification Services
  const DeviceTokenWindowsPush({
    required this.accessToken,
  });
  
  /// [accessToken] The access token that will be used to send notifications; may be empty to deregister a device
  final String accessToken;
  
  /// Parse from a json
  factory DeviceTokenWindowsPush.fromJson(Map<String, dynamic> json) => DeviceTokenWindowsPush(
    accessToken: json['access_token'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "access_token": accessToken,
    };
  }
  
  @override
  DeviceTokenWindowsPush copyWith({
    String? accessToken,
  }) => DeviceTokenWindowsPush(
    accessToken: accessToken ?? this.accessToken,
  );

  static const CONSTRUCTOR = 'deviceTokenWindowsPush';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class DeviceTokenMicrosoftPush extends DeviceToken {

  /// A token for Microsoft Push Notification Service
  const DeviceTokenMicrosoftPush({
    required this.channelUri,
  });
  
  /// [channelUri] Push notification channel URI; may be empty to deregister a device
  final String channelUri;
  
  /// Parse from a json
  factory DeviceTokenMicrosoftPush.fromJson(Map<String, dynamic> json) => DeviceTokenMicrosoftPush(
    channelUri: json['channel_uri'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "channel_uri": channelUri,
    };
  }
  
  @override
  DeviceTokenMicrosoftPush copyWith({
    String? channelUri,
  }) => DeviceTokenMicrosoftPush(
    channelUri: channelUri ?? this.channelUri,
  );

  static const CONSTRUCTOR = 'deviceTokenMicrosoftPush';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class DeviceTokenMicrosoftPushVoIP extends DeviceToken {

  /// A token for Microsoft Push Notification Service VoIP channel
  const DeviceTokenMicrosoftPushVoIP({
    required this.channelUri,
  });
  
  /// [channelUri] Push notification channel URI; may be empty to deregister a device
  final String channelUri;
  
  /// Parse from a json
  factory DeviceTokenMicrosoftPushVoIP.fromJson(Map<String, dynamic> json) => DeviceTokenMicrosoftPushVoIP(
    channelUri: json['channel_uri'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "channel_uri": channelUri,
    };
  }
  
  @override
  DeviceTokenMicrosoftPushVoIP copyWith({
    String? channelUri,
  }) => DeviceTokenMicrosoftPushVoIP(
    channelUri: channelUri ?? this.channelUri,
  );

  static const CONSTRUCTOR = 'deviceTokenMicrosoftPushVoIP';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class DeviceTokenWebPush extends DeviceToken {

  /// A token for web Push API
  const DeviceTokenWebPush({
    required this.endpoint,
    required this.p256dhBase64url,
    required this.authBase64url,
  });
  
  /// [endpoint] Absolute URL exposed by the push service where the application server can send push messages; may be empty to deregister a device
  final String endpoint;

  /// [p256dhBase64url] Base64url-encoded P-256 elliptic curve Diffie-Hellman public key
  final String p256dhBase64url;

  /// [authBase64url] Base64url-encoded authentication secret
  final String authBase64url;
  
  /// Parse from a json
  factory DeviceTokenWebPush.fromJson(Map<String, dynamic> json) => DeviceTokenWebPush(
    endpoint: json['endpoint'],
    p256dhBase64url: json['p256dh_base64url'],
    authBase64url: json['auth_base64url'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "endpoint": endpoint,
      "p256dh_base64url": p256dhBase64url,
      "auth_base64url": authBase64url,
    };
  }
  
  @override
  DeviceTokenWebPush copyWith({
    String? endpoint,
    String? p256dhBase64url,
    String? authBase64url,
  }) => DeviceTokenWebPush(
    endpoint: endpoint ?? this.endpoint,
    p256dhBase64url: p256dhBase64url ?? this.p256dhBase64url,
    authBase64url: authBase64url ?? this.authBase64url,
  );

  static const CONSTRUCTOR = 'deviceTokenWebPush';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class DeviceTokenSimplePush extends DeviceToken {

  /// A token for Simple Push API for Firefox OS
  const DeviceTokenSimplePush({
    required this.endpoint,
  });
  
  /// [endpoint] Absolute URL exposed by the push service where the application server can send push messages; may be empty to deregister a device
  final String endpoint;
  
  /// Parse from a json
  factory DeviceTokenSimplePush.fromJson(Map<String, dynamic> json) => DeviceTokenSimplePush(
    endpoint: json['endpoint'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "endpoint": endpoint,
    };
  }
  
  @override
  DeviceTokenSimplePush copyWith({
    String? endpoint,
  }) => DeviceTokenSimplePush(
    endpoint: endpoint ?? this.endpoint,
  );

  static const CONSTRUCTOR = 'deviceTokenSimplePush';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class DeviceTokenUbuntuPush extends DeviceToken {

  /// A token for Ubuntu Push Client service
  const DeviceTokenUbuntuPush({
    required this.token,
  });
  
  /// [token] Token; may be empty to deregister a device
  final String token;
  
  /// Parse from a json
  factory DeviceTokenUbuntuPush.fromJson(Map<String, dynamic> json) => DeviceTokenUbuntuPush(
    token: json['token'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "token": token,
    };
  }
  
  @override
  DeviceTokenUbuntuPush copyWith({
    String? token,
  }) => DeviceTokenUbuntuPush(
    token: token ?? this.token,
  );

  static const CONSTRUCTOR = 'deviceTokenUbuntuPush';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class DeviceTokenBlackBerryPush extends DeviceToken {

  /// A token for BlackBerry Push Service
  const DeviceTokenBlackBerryPush({
    required this.token,
  });
  
  /// [token] Token; may be empty to deregister a device
  final String token;
  
  /// Parse from a json
  factory DeviceTokenBlackBerryPush.fromJson(Map<String, dynamic> json) => DeviceTokenBlackBerryPush(
    token: json['token'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "token": token,
    };
  }
  
  @override
  DeviceTokenBlackBerryPush copyWith({
    String? token,
  }) => DeviceTokenBlackBerryPush(
    token: token ?? this.token,
  );

  static const CONSTRUCTOR = 'deviceTokenBlackBerryPush';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class DeviceTokenTizenPush extends DeviceToken {

  /// A token for Tizen Push Service
  const DeviceTokenTizenPush({
    required this.regId,
  });
  
  /// [regId] Push service registration identifier; may be empty to deregister a device
  final String regId;
  
  /// Parse from a json
  factory DeviceTokenTizenPush.fromJson(Map<String, dynamic> json) => DeviceTokenTizenPush(
    regId: json['reg_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "reg_id": regId,
    };
  }
  
  @override
  DeviceTokenTizenPush copyWith({
    String? regId,
  }) => DeviceTokenTizenPush(
    regId: regId ?? this.regId,
  );

  static const CONSTRUCTOR = 'deviceTokenTizenPush';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
