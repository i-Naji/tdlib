part of '../tdapi.dart';

class PassportElementType extends TdObject {
  /// Contains the type of a Telegram Passport element
  PassportElementType();

  /// a PassportElementType return type can be :
  /// * PassportElementTypePersonalDetails
  /// * PassportElementTypePassport
  /// * PassportElementTypeDriverLicense
  /// * PassportElementTypeIdentityCard
  /// * PassportElementTypeInternalPassport
  /// * PassportElementTypeAddress
  /// * PassportElementTypeUtilityBill
  /// * PassportElementTypeBankStatement
  /// * PassportElementTypeRentalAgreement
  /// * PassportElementTypePassportRegistration
  /// * PassportElementTypeTemporaryRegistration
  /// * PassportElementTypePhoneNumber
  /// * PassportElementTypeEmailAddress
  factory PassportElementType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PassportElementTypePersonalDetails.CONSTRUCTOR:
        return PassportElementTypePersonalDetails.fromJson(json);
      case PassportElementTypePassport.CONSTRUCTOR:
        return PassportElementTypePassport.fromJson(json);
      case PassportElementTypeDriverLicense.CONSTRUCTOR:
        return PassportElementTypeDriverLicense.fromJson(json);
      case PassportElementTypeIdentityCard.CONSTRUCTOR:
        return PassportElementTypeIdentityCard.fromJson(json);
      case PassportElementTypeInternalPassport.CONSTRUCTOR:
        return PassportElementTypeInternalPassport.fromJson(json);
      case PassportElementTypeAddress.CONSTRUCTOR:
        return PassportElementTypeAddress.fromJson(json);
      case PassportElementTypeUtilityBill.CONSTRUCTOR:
        return PassportElementTypeUtilityBill.fromJson(json);
      case PassportElementTypeBankStatement.CONSTRUCTOR:
        return PassportElementTypeBankStatement.fromJson(json);
      case PassportElementTypeRentalAgreement.CONSTRUCTOR:
        return PassportElementTypeRentalAgreement.fromJson(json);
      case PassportElementTypePassportRegistration.CONSTRUCTOR:
        return PassportElementTypePassportRegistration.fromJson(json);
      case PassportElementTypeTemporaryRegistration.CONSTRUCTOR:
        return PassportElementTypeTemporaryRegistration.fromJson(json);
      case PassportElementTypePhoneNumber.CONSTRUCTOR:
        return PassportElementTypePhoneNumber.fromJson(json);
      case PassportElementTypeEmailAddress.CONSTRUCTOR:
        return PassportElementTypeEmailAddress.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'passportElementType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypePersonalDetails extends PassportElementType {
  /// A Telegram Passport element containing the user's personal details
  PassportElementTypePersonalDetails();

  /// Parse from a json
  PassportElementTypePersonalDetails.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypePersonalDetails';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypePassport extends PassportElementType {
  /// A Telegram Passport element containing the user's passport
  PassportElementTypePassport();

  /// Parse from a json
  PassportElementTypePassport.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypePassport';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeDriverLicense extends PassportElementType {
  /// A Telegram Passport element containing the user's driver license
  PassportElementTypeDriverLicense();

  /// Parse from a json
  PassportElementTypeDriverLicense.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeDriverLicense';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeIdentityCard extends PassportElementType {
  /// A Telegram Passport element containing the user's identity card
  PassportElementTypeIdentityCard();

  /// Parse from a json
  PassportElementTypeIdentityCard.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeIdentityCard';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeInternalPassport extends PassportElementType {
  /// A Telegram Passport element containing the user's internal passport
  PassportElementTypeInternalPassport();

  /// Parse from a json
  PassportElementTypeInternalPassport.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeInternalPassport';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeAddress extends PassportElementType {
  /// A Telegram Passport element containing the user's address
  PassportElementTypeAddress();

  /// Parse from a json
  PassportElementTypeAddress.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeUtilityBill extends PassportElementType {
  /// A Telegram Passport element containing the user's utility bill
  PassportElementTypeUtilityBill();

  /// Parse from a json
  PassportElementTypeUtilityBill.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeUtilityBill';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeBankStatement extends PassportElementType {
  /// A Telegram Passport element containing the user's bank statement
  PassportElementTypeBankStatement();

  /// Parse from a json
  PassportElementTypeBankStatement.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeBankStatement';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeRentalAgreement extends PassportElementType {
  /// A Telegram Passport element containing the user's rental agreement
  PassportElementTypeRentalAgreement();

  /// Parse from a json
  PassportElementTypeRentalAgreement.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeRentalAgreement';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypePassportRegistration extends PassportElementType {
  /// A Telegram Passport element containing the registration page of the user's passport
  PassportElementTypePassportRegistration();

  /// Parse from a json
  PassportElementTypePassportRegistration.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypePassportRegistration';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeTemporaryRegistration extends PassportElementType {
  /// A Telegram Passport element containing the user's temporary registration
  PassportElementTypeTemporaryRegistration();

  /// Parse from a json
  PassportElementTypeTemporaryRegistration.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeTemporaryRegistration';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypePhoneNumber extends PassportElementType {
  /// A Telegram Passport element containing the user's phone number
  PassportElementTypePhoneNumber();

  /// Parse from a json
  PassportElementTypePhoneNumber.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypePhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeEmailAddress extends PassportElementType {
  /// A Telegram Passport element containing the user's email address
  PassportElementTypeEmailAddress();

  /// Parse from a json
  PassportElementTypeEmailAddress.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'passportElementTypeEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}
