part of '../tdapi.dart';

class KeyboardButtonType extends TdObject {
  

  /// Describes a keyboard button type
  KeyboardButtonType();

  /// a KeyboardButtonType return type can be :
  /// * KeyboardButtonTypeText
  /// * KeyboardButtonTypeRequestPhoneNumber
  /// * KeyboardButtonTypeRequestLocation
  /// * KeyboardButtonTypeRequestPoll
  factory KeyboardButtonType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case KeyboardButtonTypeText.CONSTRUCTOR:
        return KeyboardButtonTypeText.fromJson(json);
      case KeyboardButtonTypeRequestPhoneNumber.CONSTRUCTOR:
        return KeyboardButtonTypeRequestPhoneNumber.fromJson(json);
      case KeyboardButtonTypeRequestLocation.CONSTRUCTOR:
        return KeyboardButtonTypeRequestLocation.fromJson(json);
      case KeyboardButtonTypeRequestPoll.CONSTRUCTOR:
        return KeyboardButtonTypeRequestPoll.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'keyboardButtonType';
}

class KeyboardButtonTypeText extends KeyboardButtonType {
  

  /// A simple button, with text that should be sent when the button is pressed
  KeyboardButtonTypeText();

  /// Parse from a json
  KeyboardButtonTypeText.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'keyboardButtonTypeText';
}

class KeyboardButtonTypeRequestPhoneNumber extends KeyboardButtonType {
  

  /// A button that sends the user's phone number when pressed; available only in private chats
  KeyboardButtonTypeRequestPhoneNumber();

  /// Parse from a json
  KeyboardButtonTypeRequestPhoneNumber.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestPhoneNumber';
}

class KeyboardButtonTypeRequestLocation extends KeyboardButtonType {
  

  /// A button that sends the user's location when pressed; available only in private chats
  KeyboardButtonTypeRequestLocation();

  /// Parse from a json
  KeyboardButtonTypeRequestLocation.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestLocation';
}

class KeyboardButtonTypeRequestPoll extends KeyboardButtonType {
  bool forceRegular;
  bool forceQuiz;

  /// A button that allows the user to create and send a poll when pressed; available only in private chats. 
  /// [forceRegular] If true, only regular polls must be allowed to create . 
  /// [forceQuiz] If true, only polls in quiz mode must be allowed to create
  KeyboardButtonTypeRequestPoll({this.forceRegular,
    this.forceQuiz});

  /// Parse from a json
  KeyboardButtonTypeRequestPoll.fromJson(Map<String, dynamic> json)  {
    this.forceRegular = json['force_regular'];
    this.forceQuiz = json['force_quiz'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "force_regular": this.forceRegular,
      "force_quiz": this.forceQuiz,
    };
  }

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestPoll';
}