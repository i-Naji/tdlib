part of '../tdapi.dart';

class DeviceToken extends TdObject {
  

  /// Represents a data needed to subscribe for push notifications through registerDevice method. To use specific push notification service, you must specify the correct application platform and upload valid server authentication data at https://my.telegram.org
  DeviceToken();

  /// a DeviceToken return type can be :
  /// * DeviceTokenFirebaseCloudMessaging
  /// * DeviceTokenApplePush
  /// * DeviceTokenApplePushVoIP
  /// * DeviceTokenWindowsPush
  /// * DeviceTokenMicrosoftPush
  /// * DeviceTokenMicrosoftPushVoIP
  /// * DeviceTokenWebPush
  /// * DeviceTokenSimplePush
  /// * DeviceTokenUbuntuPush
  /// * DeviceTokenBlackBerryPush
  /// * DeviceTokenTizenPush
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
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'deviceToken';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class DeviceTokenFirebaseCloudMessaging extends DeviceToken {
  String token;
  bool encrypt;

  /// A token for Firebase Cloud Messaging. 
  /// [token] Device registration token; may be empty to de-register a device . 
  /// [encrypt] True, if push notifications should be additionally encrypted
  DeviceTokenFirebaseCloudMessaging({this.token,
    this.encrypt});

  /// Parse from a json
  DeviceTokenFirebaseCloudMessaging.fromJson(Map<String, dynamic> json)  {
    this.token = json['token'];
    this.encrypt = json['encrypt'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "token": this.token,
      "encrypt": this.encrypt,
    };
  }

  static const CONSTRUCTOR = 'deviceTokenFirebaseCloudMessaging';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class DeviceTokenApplePush extends DeviceToken {
  String deviceToken;
  bool isAppSandbox;

  /// A token for Apple Push Notification service. 
  /// [deviceToken] Device token; may be empty to de-register a device . 
  /// [isAppSandbox] True, if App Sandbox is enabled
  DeviceTokenApplePush({this.deviceToken,
    this.isAppSandbox});

  /// Parse from a json
  DeviceTokenApplePush.fromJson(Map<String, dynamic> json)  {
    this.deviceToken = json['device_token'];
    this.isAppSandbox = json['is_app_sandbox'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "device_token": this.deviceToken,
      "is_app_sandbox": this.isAppSandbox,
    };
  }

  static const CONSTRUCTOR = 'deviceTokenApplePush';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class DeviceTokenApplePushVoIP extends DeviceToken {
  String deviceToken;
  bool isAppSandbox;
  bool encrypt;

  /// A token for Apple Push Notification service VoIP notifications. 
  /// [deviceToken] Device token; may be empty to de-register a device . 
  /// [isAppSandbox] True, if App Sandbox is enabled . 
  /// [encrypt] True, if push notifications should be additionally encrypted
  DeviceTokenApplePushVoIP({this.deviceToken,
    this.isAppSandbox,
    this.encrypt});

  /// Parse from a json
  DeviceTokenApplePushVoIP.fromJson(Map<String, dynamic> json)  {
    this.deviceToken = json['device_token'];
    this.isAppSandbox = json['is_app_sandbox'];
    this.encrypt = json['encrypt'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "device_token": this.deviceToken,
      "is_app_sandbox": this.isAppSandbox,
      "encrypt": this.encrypt,
    };
  }

  static const CONSTRUCTOR = 'deviceTokenApplePushVoIP';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class DeviceTokenWindowsPush extends DeviceToken {
  String accessToken;

  /// A token for Windows Push Notification Services. 
  /// [accessToken] The access token that will be used to send notifications; may be empty to de-register a device
  DeviceTokenWindowsPush({this.accessToken});

  /// Parse from a json
  DeviceTokenWindowsPush.fromJson(Map<String, dynamic> json)  {
    this.accessToken = json['access_token'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "access_token": this.accessToken,
    };
  }

  static const CONSTRUCTOR = 'deviceTokenWindowsPush';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class DeviceTokenMicrosoftPush extends DeviceToken {
  String channelUri;

  /// A token for Microsoft Push Notification Service. 
  /// [channelUri] Push notification channel URI; may be empty to de-register a device
  DeviceTokenMicrosoftPush({this.channelUri});

  /// Parse from a json
  DeviceTokenMicrosoftPush.fromJson(Map<String, dynamic> json)  {
    this.channelUri = json['channel_uri'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "channel_uri": this.channelUri,
    };
  }

  static const CONSTRUCTOR = 'deviceTokenMicrosoftPush';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class DeviceTokenMicrosoftPushVoIP extends DeviceToken {
  String channelUri;

  /// A token for Microsoft Push Notification Service VoIP channel. 
  /// [channelUri] Push notification channel URI; may be empty to de-register a device
  DeviceTokenMicrosoftPushVoIP({this.channelUri});

  /// Parse from a json
  DeviceTokenMicrosoftPushVoIP.fromJson(Map<String, dynamic> json)  {
    this.channelUri = json['channel_uri'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "channel_uri": this.channelUri,
    };
  }

  static const CONSTRUCTOR = 'deviceTokenMicrosoftPushVoIP';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class DeviceTokenWebPush extends DeviceToken {
  String endpoint;
  String p256dhBase64url;
  String authBase64url;

  /// A token for web Push API. 
  /// [endpoint] Absolute URL exposed by the push service where the application server can send push messages; may be empty to de-register a device. 
  /// [p256dhBase64url] Base64url-encoded P-256 elliptic curve Diffie-Hellman public key. 
  /// [authBase64url] Base64url-encoded authentication secret
  DeviceTokenWebPush({this.endpoint,
    this.p256dhBase64url,
    this.authBase64url});

  /// Parse from a json
  DeviceTokenWebPush.fromJson(Map<String, dynamic> json)  {
    this.endpoint = json['endpoint'];
    this.p256dhBase64url = json['p256dh_base64url'];
    this.authBase64url = json['auth_base64url'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "endpoint": this.endpoint,
      "p256dh_base64url": this.p256dhBase64url,
      "auth_base64url": this.authBase64url,
    };
  }

  static const CONSTRUCTOR = 'deviceTokenWebPush';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class DeviceTokenSimplePush extends DeviceToken {
  String endpoint;

  /// A token for Simple Push API for Firefox OS. 
  /// [endpoint] Absolute URL exposed by the push service where the application server can send push messages; may be empty to de-register a device
  DeviceTokenSimplePush({this.endpoint});

  /// Parse from a json
  DeviceTokenSimplePush.fromJson(Map<String, dynamic> json)  {
    this.endpoint = json['endpoint'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "endpoint": this.endpoint,
    };
  }

  static const CONSTRUCTOR = 'deviceTokenSimplePush';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class DeviceTokenUbuntuPush extends DeviceToken {
  String token;

  /// A token for Ubuntu Push Client service. 
  /// [token] Token; may be empty to de-register a device
  DeviceTokenUbuntuPush({this.token});

  /// Parse from a json
  DeviceTokenUbuntuPush.fromJson(Map<String, dynamic> json)  {
    this.token = json['token'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "token": this.token,
    };
  }

  static const CONSTRUCTOR = 'deviceTokenUbuntuPush';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class DeviceTokenBlackBerryPush extends DeviceToken {
  String token;

  /// A token for BlackBerry Push Service. 
  /// [token] Token; may be empty to de-register a device
  DeviceTokenBlackBerryPush({this.token});

  /// Parse from a json
  DeviceTokenBlackBerryPush.fromJson(Map<String, dynamic> json)  {
    this.token = json['token'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "token": this.token,
    };
  }

  static const CONSTRUCTOR = 'deviceTokenBlackBerryPush';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class DeviceTokenTizenPush extends DeviceToken {
  String regId;

  /// A token for Tizen Push Service. 
  /// [regId] Push service registration identifier; may be empty to de-register a device
  DeviceTokenTizenPush({this.regId});

  /// Parse from a json
  DeviceTokenTizenPush.fromJson(Map<String, dynamic> json)  {
    this.regId = json['reg_id'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "reg_id": this.regId,
    };
  }

  static const CONSTRUCTOR = 'deviceTokenTizenPush';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}