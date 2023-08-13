part of '../tdapi.dart';

class ReportReason extends TdObject {
  /// Describes the reason why a chat is reported
  const ReportReason();

  /// a ReportReason return type can be :
  /// * [ReportReasonSpam]
  /// * [ReportReasonViolence]
  /// * [ReportReasonPornography]
  /// * [ReportReasonChildAbuse]
  /// * [ReportReasonCopyright]
  /// * [ReportReasonUnrelatedLocation]
  /// * [ReportReasonFake]
  /// * [ReportReasonIllegalDrugs]
  /// * [ReportReasonPersonalDetails]
  /// * [ReportReasonCustom]
  factory ReportReason.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ReportReasonSpam.CONSTRUCTOR:
        return ReportReasonSpam.fromJson(json);
      case ReportReasonViolence.CONSTRUCTOR:
        return ReportReasonViolence.fromJson(json);
      case ReportReasonPornography.CONSTRUCTOR:
        return ReportReasonPornography.fromJson(json);
      case ReportReasonChildAbuse.CONSTRUCTOR:
        return ReportReasonChildAbuse.fromJson(json);
      case ReportReasonCopyright.CONSTRUCTOR:
        return ReportReasonCopyright.fromJson(json);
      case ReportReasonUnrelatedLocation.CONSTRUCTOR:
        return ReportReasonUnrelatedLocation.fromJson(json);
      case ReportReasonFake.CONSTRUCTOR:
        return ReportReasonFake.fromJson(json);
      case ReportReasonIllegalDrugs.CONSTRUCTOR:
        return ReportReasonIllegalDrugs.fromJson(json);
      case ReportReasonPersonalDetails.CONSTRUCTOR:
        return ReportReasonPersonalDetails.fromJson(json);
      case ReportReasonCustom.CONSTRUCTOR:
        return ReportReasonCustom.fromJson(json);
      default:
        return const ReportReason();
    }
  }

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {};
  }

  ReportReason copyWith() => const ReportReason();

  static const CONSTRUCTOR = 'reportReason';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReportReasonSpam extends ReportReason {
  /// The chat contains spam messages
  const ReportReasonSpam();

  /// Parse from a json
  factory ReportReasonSpam.fromJson(Map<String, dynamic> json) =>
      const ReportReasonSpam();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ReportReasonSpam copyWith() => const ReportReasonSpam();

  static const CONSTRUCTOR = 'reportReasonSpam';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReportReasonViolence extends ReportReason {
  /// The chat promotes violence
  const ReportReasonViolence();

  /// Parse from a json
  factory ReportReasonViolence.fromJson(Map<String, dynamic> json) =>
      const ReportReasonViolence();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ReportReasonViolence copyWith() => const ReportReasonViolence();

  static const CONSTRUCTOR = 'reportReasonViolence';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReportReasonPornography extends ReportReason {
  /// The chat contains pornographic messages
  const ReportReasonPornography();

  /// Parse from a json
  factory ReportReasonPornography.fromJson(Map<String, dynamic> json) =>
      const ReportReasonPornography();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ReportReasonPornography copyWith() => const ReportReasonPornography();

  static const CONSTRUCTOR = 'reportReasonPornography';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReportReasonChildAbuse extends ReportReason {
  /// The chat has child abuse related content
  const ReportReasonChildAbuse();

  /// Parse from a json
  factory ReportReasonChildAbuse.fromJson(Map<String, dynamic> json) =>
      const ReportReasonChildAbuse();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ReportReasonChildAbuse copyWith() => const ReportReasonChildAbuse();

  static const CONSTRUCTOR = 'reportReasonChildAbuse';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReportReasonCopyright extends ReportReason {
  /// The chat contains copyrighted content
  const ReportReasonCopyright();

  /// Parse from a json
  factory ReportReasonCopyright.fromJson(Map<String, dynamic> json) =>
      const ReportReasonCopyright();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ReportReasonCopyright copyWith() => const ReportReasonCopyright();

  static const CONSTRUCTOR = 'reportReasonCopyright';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReportReasonUnrelatedLocation extends ReportReason {
  /// The location-based chat is unrelated to its stated location
  const ReportReasonUnrelatedLocation();

  /// Parse from a json
  factory ReportReasonUnrelatedLocation.fromJson(Map<String, dynamic> json) =>
      const ReportReasonUnrelatedLocation();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ReportReasonUnrelatedLocation copyWith() =>
      const ReportReasonUnrelatedLocation();

  static const CONSTRUCTOR = 'reportReasonUnrelatedLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReportReasonFake extends ReportReason {
  /// The chat represents a fake account
  const ReportReasonFake();

  /// Parse from a json
  factory ReportReasonFake.fromJson(Map<String, dynamic> json) =>
      const ReportReasonFake();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ReportReasonFake copyWith() => const ReportReasonFake();

  static const CONSTRUCTOR = 'reportReasonFake';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReportReasonIllegalDrugs extends ReportReason {
  /// The chat has illegal drugs related content
  const ReportReasonIllegalDrugs();

  /// Parse from a json
  factory ReportReasonIllegalDrugs.fromJson(Map<String, dynamic> json) =>
      const ReportReasonIllegalDrugs();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ReportReasonIllegalDrugs copyWith() => const ReportReasonIllegalDrugs();

  static const CONSTRUCTOR = 'reportReasonIllegalDrugs';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReportReasonPersonalDetails extends ReportReason {
  /// The chat contains messages with personal details
  const ReportReasonPersonalDetails();

  /// Parse from a json
  factory ReportReasonPersonalDetails.fromJson(Map<String, dynamic> json) =>
      const ReportReasonPersonalDetails();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ReportReasonPersonalDetails copyWith() => const ReportReasonPersonalDetails();

  static const CONSTRUCTOR = 'reportReasonPersonalDetails';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ReportReasonCustom extends ReportReason {
  /// A custom reason provided by the user
  const ReportReasonCustom();

  /// Parse from a json
  factory ReportReasonCustom.fromJson(Map<String, dynamic> json) =>
      const ReportReasonCustom();

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  @override
  ReportReasonCustom copyWith() => const ReportReasonCustom();

  static const CONSTRUCTOR = 'reportReasonCustom';

  @override
  String getConstructor() => CONSTRUCTOR;
}
