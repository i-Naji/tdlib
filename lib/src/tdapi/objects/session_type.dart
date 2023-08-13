part of '../tdapi.dart';

class SessionType extends TdObject {
  /// Represents the type of a session
  const SessionType();

  /// a SessionType return type can be :
  /// * [SessionTypeAndroid]
  /// * [SessionTypeApple]
  /// * [SessionTypeBrave]
  /// * [SessionTypeChrome]
  /// * [SessionTypeEdge]
  /// * [SessionTypeFirefox]
  /// * [SessionTypeIpad]
  /// * [SessionTypeIphone]
  /// * [SessionTypeLinux]
  /// * [SessionTypeMac]
  /// * [SessionTypeOpera]
  /// * [SessionTypeSafari]
  /// * [SessionTypeUbuntu]
  /// * [SessionTypeUnknown]
  /// * [SessionTypeVivaldi]
  /// * [SessionTypeWindows]
  /// * [SessionTypeXbox]
  factory SessionType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case SessionTypeAndroid.CONSTRUCTOR:
        return SessionTypeAndroid.fromJson(json);
      case SessionTypeApple.CONSTRUCTOR:
        return SessionTypeApple.fromJson(json);
      case SessionTypeBrave.CONSTRUCTOR:
        return SessionTypeBrave.fromJson(json);
      case SessionTypeChrome.CONSTRUCTOR:
        return SessionTypeChrome.fromJson(json);
      case SessionTypeEdge.CONSTRUCTOR:
        return SessionTypeEdge.fromJson(json);
      case SessionTypeFirefox.CONSTRUCTOR:
        return SessionTypeFirefox.fromJson(json);
      case SessionTypeIpad.CONSTRUCTOR:
        return SessionTypeIpad.fromJson(json);
      case SessionTypeIphone.CONSTRUCTOR:
        return SessionTypeIphone.fromJson(json);
      case SessionTypeLinux.CONSTRUCTOR:
        return SessionTypeLinux.fromJson(json);
      case SessionTypeMac.CONSTRUCTOR:
        return SessionTypeMac.fromJson(json);
      case SessionTypeOpera.CONSTRUCTOR:
        return SessionTypeOpera.fromJson(json);
      case SessionTypeSafari.CONSTRUCTOR:
        return SessionTypeSafari.fromJson(json);
      case SessionTypeUbuntu.CONSTRUCTOR:
        return SessionTypeUbuntu.fromJson(json);
      case SessionTypeUnknown.CONSTRUCTOR:
        return SessionTypeUnknown.fromJson(json);
      case SessionTypeVivaldi.CONSTRUCTOR:
        return SessionTypeVivaldi.fromJson(json);
      case SessionTypeWindows.CONSTRUCTOR:
        return SessionTypeWindows.fromJson(json);
      case SessionTypeXbox.CONSTRUCTOR:
        return SessionTypeXbox.fromJson(json);
      default:
        return const SessionType();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  SessionType copyWith() => const SessionType();

  static const CONSTRUCTOR = 'sessionType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeAndroid extends SessionType {
  /// The session is running on an Android device
  const SessionTypeAndroid();

  /// Parse from a json
  factory SessionTypeAndroid.fromJson(Map<String, dynamic> json) =>
      const SessionTypeAndroid();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeAndroid copyWith() => const SessionTypeAndroid();

  static const CONSTRUCTOR = 'sessionTypeAndroid';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeApple extends SessionType {
  /// The session is running on a generic Apple device
  const SessionTypeApple();

  /// Parse from a json
  factory SessionTypeApple.fromJson(Map<String, dynamic> json) =>
      const SessionTypeApple();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeApple copyWith() => const SessionTypeApple();

  static const CONSTRUCTOR = 'sessionTypeApple';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeBrave extends SessionType {
  /// The session is running on the Brave browser
  const SessionTypeBrave();

  /// Parse from a json
  factory SessionTypeBrave.fromJson(Map<String, dynamic> json) =>
      const SessionTypeBrave();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeBrave copyWith() => const SessionTypeBrave();

  static const CONSTRUCTOR = 'sessionTypeBrave';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeChrome extends SessionType {
  /// The session is running on the Chrome browser
  const SessionTypeChrome();

  /// Parse from a json
  factory SessionTypeChrome.fromJson(Map<String, dynamic> json) =>
      const SessionTypeChrome();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeChrome copyWith() => const SessionTypeChrome();

  static const CONSTRUCTOR = 'sessionTypeChrome';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeEdge extends SessionType {
  /// The session is running on the Edge browser
  const SessionTypeEdge();

  /// Parse from a json
  factory SessionTypeEdge.fromJson(Map<String, dynamic> json) =>
      const SessionTypeEdge();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeEdge copyWith() => const SessionTypeEdge();

  static const CONSTRUCTOR = 'sessionTypeEdge';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeFirefox extends SessionType {
  /// The session is running on the Firefox browser
  const SessionTypeFirefox();

  /// Parse from a json
  factory SessionTypeFirefox.fromJson(Map<String, dynamic> json) =>
      const SessionTypeFirefox();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeFirefox copyWith() => const SessionTypeFirefox();

  static const CONSTRUCTOR = 'sessionTypeFirefox';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeIpad extends SessionType {
  /// The session is running on an iPad device
  const SessionTypeIpad();

  /// Parse from a json
  factory SessionTypeIpad.fromJson(Map<String, dynamic> json) =>
      const SessionTypeIpad();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeIpad copyWith() => const SessionTypeIpad();

  static const CONSTRUCTOR = 'sessionTypeIpad';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeIphone extends SessionType {
  /// The session is running on an iPhone device
  const SessionTypeIphone();

  /// Parse from a json
  factory SessionTypeIphone.fromJson(Map<String, dynamic> json) =>
      const SessionTypeIphone();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeIphone copyWith() => const SessionTypeIphone();

  static const CONSTRUCTOR = 'sessionTypeIphone';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeLinux extends SessionType {
  /// The session is running on a Linux device
  const SessionTypeLinux();

  /// Parse from a json
  factory SessionTypeLinux.fromJson(Map<String, dynamic> json) =>
      const SessionTypeLinux();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeLinux copyWith() => const SessionTypeLinux();

  static const CONSTRUCTOR = 'sessionTypeLinux';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeMac extends SessionType {
  /// The session is running on a Mac device
  const SessionTypeMac();

  /// Parse from a json
  factory SessionTypeMac.fromJson(Map<String, dynamic> json) =>
      const SessionTypeMac();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeMac copyWith() => const SessionTypeMac();

  static const CONSTRUCTOR = 'sessionTypeMac';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeOpera extends SessionType {
  /// The session is running on the Opera browser
  const SessionTypeOpera();

  /// Parse from a json
  factory SessionTypeOpera.fromJson(Map<String, dynamic> json) =>
      const SessionTypeOpera();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeOpera copyWith() => const SessionTypeOpera();

  static const CONSTRUCTOR = 'sessionTypeOpera';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeSafari extends SessionType {
  /// The session is running on the Safari browser
  const SessionTypeSafari();

  /// Parse from a json
  factory SessionTypeSafari.fromJson(Map<String, dynamic> json) =>
      const SessionTypeSafari();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeSafari copyWith() => const SessionTypeSafari();

  static const CONSTRUCTOR = 'sessionTypeSafari';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeUbuntu extends SessionType {
  /// The session is running on an Ubuntu device
  const SessionTypeUbuntu();

  /// Parse from a json
  factory SessionTypeUbuntu.fromJson(Map<String, dynamic> json) =>
      const SessionTypeUbuntu();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeUbuntu copyWith() => const SessionTypeUbuntu();

  static const CONSTRUCTOR = 'sessionTypeUbuntu';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeUnknown extends SessionType {
  /// The session is running on an unknown type of device
  const SessionTypeUnknown();

  /// Parse from a json
  factory SessionTypeUnknown.fromJson(Map<String, dynamic> json) =>
      const SessionTypeUnknown();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeUnknown copyWith() => const SessionTypeUnknown();

  static const CONSTRUCTOR = 'sessionTypeUnknown';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeVivaldi extends SessionType {
  /// The session is running on the Vivaldi browser
  const SessionTypeVivaldi();

  /// Parse from a json
  factory SessionTypeVivaldi.fromJson(Map<String, dynamic> json) =>
      const SessionTypeVivaldi();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeVivaldi copyWith() => const SessionTypeVivaldi();

  static const CONSTRUCTOR = 'sessionTypeVivaldi';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeWindows extends SessionType {
  /// The session is running on a Windows device
  const SessionTypeWindows();

  /// Parse from a json
  factory SessionTypeWindows.fromJson(Map<String, dynamic> json) =>
      const SessionTypeWindows();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeWindows copyWith() => const SessionTypeWindows();

  static const CONSTRUCTOR = 'sessionTypeWindows';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class SessionTypeXbox extends SessionType {
  /// The session is running on an Xbox console
  const SessionTypeXbox();

  /// Parse from a json
  factory SessionTypeXbox.fromJson(Map<String, dynamic> json) =>
      const SessionTypeXbox();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  SessionTypeXbox copyWith() => const SessionTypeXbox();

  static const CONSTRUCTOR = 'sessionTypeXbox';

  @override
  String getConstructor() => CONSTRUCTOR;
}
