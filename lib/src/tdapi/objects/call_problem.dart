part of '../tdapi.dart';

class CallProblem extends TdObject {

  /// Describes the exact type of a problem with a call
  const CallProblem();
  
  /// a CallProblem return type can be :
  /// * [CallProblemEcho]
  /// * [CallProblemNoise]
  /// * [CallProblemInterruptions]
  /// * [CallProblemDistortedSpeech]
  /// * [CallProblemSilentLocal]
  /// * [CallProblemSilentRemote]
  /// * [CallProblemDropped]
  /// * [CallProblemDistortedVideo]
  /// * [CallProblemPixelatedVideo]
  factory CallProblem.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CallProblemEcho.CONSTRUCTOR:
        return CallProblemEcho.fromJson(json);
      case CallProblemNoise.CONSTRUCTOR:
        return CallProblemNoise.fromJson(json);
      case CallProblemInterruptions.CONSTRUCTOR:
        return CallProblemInterruptions.fromJson(json);
      case CallProblemDistortedSpeech.CONSTRUCTOR:
        return CallProblemDistortedSpeech.fromJson(json);
      case CallProblemSilentLocal.CONSTRUCTOR:
        return CallProblemSilentLocal.fromJson(json);
      case CallProblemSilentRemote.CONSTRUCTOR:
        return CallProblemSilentRemote.fromJson(json);
      case CallProblemDropped.CONSTRUCTOR:
        return CallProblemDropped.fromJson(json);
      case CallProblemDistortedVideo.CONSTRUCTOR:
        return CallProblemDistortedVideo.fromJson(json);
      case CallProblemPixelatedVideo.CONSTRUCTOR:
        return CallProblemPixelatedVideo.fromJson(json);
      default:
        return const CallProblem();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  CallProblem copyWith() => const CallProblem();

  static const CONSTRUCTOR = 'callProblem';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemEcho extends CallProblem {

  /// The user heard their own voice
  const CallProblemEcho();
  
  /// Parse from a json
  factory CallProblemEcho.fromJson(Map<String, dynamic> json) => const CallProblemEcho();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CallProblemEcho copyWith() => const CallProblemEcho();

  static const CONSTRUCTOR = 'callProblemEcho';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemNoise extends CallProblem {

  /// The user heard background noise
  const CallProblemNoise();
  
  /// Parse from a json
  factory CallProblemNoise.fromJson(Map<String, dynamic> json) => const CallProblemNoise();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CallProblemNoise copyWith() => const CallProblemNoise();

  static const CONSTRUCTOR = 'callProblemNoise';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemInterruptions extends CallProblem {

  /// The other side kept disappearing
  const CallProblemInterruptions();
  
  /// Parse from a json
  factory CallProblemInterruptions.fromJson(Map<String, dynamic> json) => const CallProblemInterruptions();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CallProblemInterruptions copyWith() => const CallProblemInterruptions();

  static const CONSTRUCTOR = 'callProblemInterruptions';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemDistortedSpeech extends CallProblem {

  /// The speech was distorted
  const CallProblemDistortedSpeech();
  
  /// Parse from a json
  factory CallProblemDistortedSpeech.fromJson(Map<String, dynamic> json) => const CallProblemDistortedSpeech();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CallProblemDistortedSpeech copyWith() => const CallProblemDistortedSpeech();

  static const CONSTRUCTOR = 'callProblemDistortedSpeech';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemSilentLocal extends CallProblem {

  /// The user couldn't hear the other side
  const CallProblemSilentLocal();
  
  /// Parse from a json
  factory CallProblemSilentLocal.fromJson(Map<String, dynamic> json) => const CallProblemSilentLocal();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CallProblemSilentLocal copyWith() => const CallProblemSilentLocal();

  static const CONSTRUCTOR = 'callProblemSilentLocal';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemSilentRemote extends CallProblem {

  /// The other side couldn't hear the user
  const CallProblemSilentRemote();
  
  /// Parse from a json
  factory CallProblemSilentRemote.fromJson(Map<String, dynamic> json) => const CallProblemSilentRemote();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CallProblemSilentRemote copyWith() => const CallProblemSilentRemote();

  static const CONSTRUCTOR = 'callProblemSilentRemote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemDropped extends CallProblem {

  /// The call ended unexpectedly
  const CallProblemDropped();
  
  /// Parse from a json
  factory CallProblemDropped.fromJson(Map<String, dynamic> json) => const CallProblemDropped();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CallProblemDropped copyWith() => const CallProblemDropped();

  static const CONSTRUCTOR = 'callProblemDropped';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemDistortedVideo extends CallProblem {

  /// The video was distorted
  const CallProblemDistortedVideo();
  
  /// Parse from a json
  factory CallProblemDistortedVideo.fromJson(Map<String, dynamic> json) => const CallProblemDistortedVideo();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CallProblemDistortedVideo copyWith() => const CallProblemDistortedVideo();

  static const CONSTRUCTOR = 'callProblemDistortedVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class CallProblemPixelatedVideo extends CallProblem {

  /// The video was pixelated
  const CallProblemPixelatedVideo();
  
  /// Parse from a json
  factory CallProblemPixelatedVideo.fromJson(Map<String, dynamic> json) => const CallProblemPixelatedVideo();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  CallProblemPixelatedVideo copyWith() => const CallProblemPixelatedVideo();

  static const CONSTRUCTOR = 'callProblemPixelatedVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
