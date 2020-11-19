part of '../tdapi.dart';

class CallProblem extends TdObject {
  /// Describes the exact type of a problem with a call
  CallProblem();

  /// a CallProblem return type can be :
  /// * CallProblemEcho
  /// * CallProblemNoise
  /// * CallProblemInterruptions
  /// * CallProblemDistortedSpeech
  /// * CallProblemSilentLocal
  /// * CallProblemSilentRemote
  /// * CallProblemDropped
  /// * CallProblemDistortedVideo
  /// * CallProblemPixelatedVideo
  factory CallProblem.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
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
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'callProblem';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemEcho extends CallProblem {
  /// The user heard their own voice
  CallProblemEcho();

  /// Parse from a json
  CallProblemEcho.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'callProblemEcho';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemNoise extends CallProblem {
  /// The user heard background noise
  CallProblemNoise();

  /// Parse from a json
  CallProblemNoise.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'callProblemNoise';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemInterruptions extends CallProblem {
  /// The other side kept disappearing
  CallProblemInterruptions();

  /// Parse from a json
  CallProblemInterruptions.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'callProblemInterruptions';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemDistortedSpeech extends CallProblem {
  /// The speech was distorted
  CallProblemDistortedSpeech();

  /// Parse from a json
  CallProblemDistortedSpeech.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'callProblemDistortedSpeech';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemSilentLocal extends CallProblem {
  /// The user couldn't hear the other side
  CallProblemSilentLocal();

  /// Parse from a json
  CallProblemSilentLocal.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'callProblemSilentLocal';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemSilentRemote extends CallProblem {
  /// The other side couldn't hear the user
  CallProblemSilentRemote();

  /// Parse from a json
  CallProblemSilentRemote.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'callProblemSilentRemote';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemDropped extends CallProblem {
  /// The call ended unexpectedly
  CallProblemDropped();

  /// Parse from a json
  CallProblemDropped.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'callProblemDropped';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemDistortedVideo extends CallProblem {
  /// The video was distorted
  CallProblemDistortedVideo();

  /// Parse from a json
  CallProblemDistortedVideo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'callProblemDistortedVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class CallProblemPixelatedVideo extends CallProblem {
  /// The video was pixelated
  CallProblemPixelatedVideo();

  /// Parse from a json
  CallProblemPixelatedVideo.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'callProblemPixelatedVideo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
