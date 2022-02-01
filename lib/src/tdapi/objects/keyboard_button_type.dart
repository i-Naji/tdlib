part of '../tdapi.dart';

class KeyboardButtonType extends TdObject {

  /// Describes a keyboard button type
  const KeyboardButtonType();
  
  /// a KeyboardButtonType return type can be :
  /// * [KeyboardButtonTypeText]
  /// * [KeyboardButtonTypeRequestPhoneNumber]
  /// * [KeyboardButtonTypeRequestLocation]
  /// * [KeyboardButtonTypeRequestPoll]
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
        return const KeyboardButtonType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  KeyboardButtonType copyWith() => const KeyboardButtonType();

  static const CONSTRUCTOR = 'keyboardButtonType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class KeyboardButtonTypeText extends KeyboardButtonType {

  /// A simple button, with text that must be sent when the button is pressed
  const KeyboardButtonTypeText();
  
  /// Parse from a json
  factory KeyboardButtonTypeText.fromJson(Map<String, dynamic> json) => const KeyboardButtonTypeText();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  KeyboardButtonTypeText copyWith() => const KeyboardButtonTypeText();

  static const CONSTRUCTOR = 'keyboardButtonTypeText';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class KeyboardButtonTypeRequestPhoneNumber extends KeyboardButtonType {

  /// A button that sends the user's phone number when pressed; available only in private chats
  const KeyboardButtonTypeRequestPhoneNumber();
  
  /// Parse from a json
  factory KeyboardButtonTypeRequestPhoneNumber.fromJson(Map<String, dynamic> json) => const KeyboardButtonTypeRequestPhoneNumber();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  KeyboardButtonTypeRequestPhoneNumber copyWith() => const KeyboardButtonTypeRequestPhoneNumber();

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestPhoneNumber';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class KeyboardButtonTypeRequestLocation extends KeyboardButtonType {

  /// A button that sends the user's location when pressed; available only in private chats
  const KeyboardButtonTypeRequestLocation();
  
  /// Parse from a json
  factory KeyboardButtonTypeRequestLocation.fromJson(Map<String, dynamic> json) => const KeyboardButtonTypeRequestLocation();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  KeyboardButtonTypeRequestLocation copyWith() => const KeyboardButtonTypeRequestLocation();

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class KeyboardButtonTypeRequestPoll extends KeyboardButtonType {

  /// A button that allows the user to create and send a poll when pressed; available only in private chats
  const KeyboardButtonTypeRequestPoll({
    required this.forceRegular,
    required this.forceQuiz,
  });
  
  /// [forceRegular] If true, only regular polls must be allowed to create 
  final bool forceRegular;

  /// [forceQuiz] If true, only polls in quiz mode must be allowed to create
  final bool forceQuiz;
  
  /// Parse from a json
  factory KeyboardButtonTypeRequestPoll.fromJson(Map<String, dynamic> json) => KeyboardButtonTypeRequestPoll(
    forceRegular: json['force_regular'],
    forceQuiz: json['force_quiz'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "force_regular": forceRegular,
      "force_quiz": forceQuiz,
    };
  }
  
  @override
  KeyboardButtonTypeRequestPoll copyWith({
    bool? forceRegular,
    bool? forceQuiz,
  }) => KeyboardButtonTypeRequestPoll(
    forceRegular: forceRegular ?? this.forceRegular,
    forceQuiz: forceQuiz ?? this.forceQuiz,
  );

  static const CONSTRUCTOR = 'keyboardButtonTypeRequestPoll';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
