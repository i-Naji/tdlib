part of '../tdapi.dart';

class KeyboardButtonType implements TLObject {
  /// Describes a keyboard button type
  KeyboardButtonType();

  /// a KeyboardButtonType return type can be :
  /// * KeyboardButtonTypeRequestPhoneNumber
  /// * KeyboardButtonTypeRequestLocation
  /// * KeyboardButtonTypeText
  factory KeyboardButtonType.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case KeyboardButtonTypeRequestPhoneNumber.CONSTRUCTOR:
        return KeyboardButtonTypeRequestPhoneNumber.fromJson(json);
      case KeyboardButtonTypeRequestLocation.CONSTRUCTOR:
        return KeyboardButtonTypeRequestLocation.fromJson(json);
      case KeyboardButtonTypeText.CONSTRUCTOR:
        return KeyboardButtonTypeText.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'keyboardButtonType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class KeyboardButtonTypeText implements KeyboardButtonType {
  /// A simple button, with text that should be sent when the button is pressed.
  ///
  KeyboardButtonTypeText();

  /// Parse from a json
  KeyboardButtonTypeText.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'keyboardButtonTypeText';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class KeyboardButtonTypeRequestPhoneNumber implements KeyboardButtonType {
  /// A button that sends the user's phone number when pressed; available only in private chats.
  ///
  KeyboardButtonTypeRequestPhoneNumber();

  /// Parse from a json
  KeyboardButtonTypeRequestPhoneNumber.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'keyboardButtonTypeRequestPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class KeyboardButtonTypeRequestLocation implements KeyboardButtonType {
  /// A button that sends the user's location when pressed; available only in private chats.
  ///
  KeyboardButtonTypeRequestLocation();

  /// Parse from a json
  KeyboardButtonTypeRequestLocation.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'keyboardButtonTypeRequestLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
