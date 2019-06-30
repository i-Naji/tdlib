part of '../tdapi.dart';

class PassportElementType implements TLObject {
  /// Contains the type of a Telegram Passport element
  PassportElementType();

  /// a PassportElementType return type can be :
  /// * PassportElementTypePassportRegistration
  /// * PassportElementTypeEmailAddress
  /// * PassportElementTypeInternalPassport
  /// * PassportElementTypePersonalDetails
  /// * PassportElementTypeRentalAgreement
  /// * PassportElementTypeDriverLicense
  /// * PassportElementTypeIdentityCard
  /// * PassportElementTypeTemporaryRegistration
  /// * PassportElementTypePhoneNumber
  /// * PassportElementTypeAddress
  /// * PassportElementTypeBankStatement
  /// * PassportElementTypeUtilityBill
  /// * PassportElementTypePassport
  factory PassportElementType.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case PassportElementTypePassportRegistration.CONSTRUCTOR:
        return PassportElementTypePassportRegistration.fromJson(json);
      case PassportElementTypeEmailAddress.CONSTRUCTOR:
        return PassportElementTypeEmailAddress.fromJson(json);
      case PassportElementTypeInternalPassport.CONSTRUCTOR:
        return PassportElementTypeInternalPassport.fromJson(json);
      case PassportElementTypePersonalDetails.CONSTRUCTOR:
        return PassportElementTypePersonalDetails.fromJson(json);
      case PassportElementTypeRentalAgreement.CONSTRUCTOR:
        return PassportElementTypeRentalAgreement.fromJson(json);
      case PassportElementTypeDriverLicense.CONSTRUCTOR:
        return PassportElementTypeDriverLicense.fromJson(json);
      case PassportElementTypeIdentityCard.CONSTRUCTOR:
        return PassportElementTypeIdentityCard.fromJson(json);
      case PassportElementTypeTemporaryRegistration.CONSTRUCTOR:
        return PassportElementTypeTemporaryRegistration.fromJson(json);
      case PassportElementTypePhoneNumber.CONSTRUCTOR:
        return PassportElementTypePhoneNumber.fromJson(json);
      case PassportElementTypeAddress.CONSTRUCTOR:
        return PassportElementTypeAddress.fromJson(json);
      case PassportElementTypeBankStatement.CONSTRUCTOR:
        return PassportElementTypeBankStatement.fromJson(json);
      case PassportElementTypeUtilityBill.CONSTRUCTOR:
        return PassportElementTypeUtilityBill.fromJson(json);
      case PassportElementTypePassport.CONSTRUCTOR:
        return PassportElementTypePassport.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = 'passportElementType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypePersonalDetails implements PassportElementType {
  /// A Telegram Passport element containing the user's personal details.
  ///
  PassportElementTypePersonalDetails();

  /// Parse from a json
  PassportElementTypePersonalDetails.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementTypePersonalDetails';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypePassport implements PassportElementType {
  /// A Telegram Passport element containing the user's passport.
  ///
  PassportElementTypePassport();

  /// Parse from a json
  PassportElementTypePassport.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementTypePassport';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeDriverLicense implements PassportElementType {
  /// A Telegram Passport element containing the user's driver license.
  ///
  PassportElementTypeDriverLicense();

  /// Parse from a json
  PassportElementTypeDriverLicense.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementTypeDriverLicense';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeIdentityCard implements PassportElementType {
  /// A Telegram Passport element containing the user's identity card.
  ///
  PassportElementTypeIdentityCard();

  /// Parse from a json
  PassportElementTypeIdentityCard.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementTypeIdentityCard';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeInternalPassport implements PassportElementType {
  /// A Telegram Passport element containing the user's internal passport.
  ///
  PassportElementTypeInternalPassport();

  /// Parse from a json
  PassportElementTypeInternalPassport.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementTypeInternalPassport';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeAddress implements PassportElementType {
  /// A Telegram Passport element containing the user's address.
  ///
  PassportElementTypeAddress();

  /// Parse from a json
  PassportElementTypeAddress.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementTypeAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeUtilityBill implements PassportElementType {
  /// A Telegram Passport element containing the user's utility bill.
  ///
  PassportElementTypeUtilityBill();

  /// Parse from a json
  PassportElementTypeUtilityBill.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementTypeUtilityBill';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeBankStatement implements PassportElementType {
  /// A Telegram Passport element containing the user's bank statement.
  ///
  PassportElementTypeBankStatement();

  /// Parse from a json
  PassportElementTypeBankStatement.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementTypeBankStatement';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeRentalAgreement implements PassportElementType {
  /// A Telegram Passport element containing the user's rental agreement.
  ///
  PassportElementTypeRentalAgreement();

  /// Parse from a json
  PassportElementTypeRentalAgreement.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementTypeRentalAgreement';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypePassportRegistration implements PassportElementType {
  /// A Telegram Passport element containing the registration page of the user's passport.
  ///
  PassportElementTypePassportRegistration();

  /// Parse from a json
  PassportElementTypePassportRegistration.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementTypePassportRegistration';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeTemporaryRegistration implements PassportElementType {
  /// A Telegram Passport element containing the user's temporary registration.
  ///
  PassportElementTypeTemporaryRegistration();

  /// Parse from a json
  PassportElementTypeTemporaryRegistration.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementTypeTemporaryRegistration';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypePhoneNumber implements PassportElementType {
  /// A Telegram Passport element containing the user's phone number.
  ///
  PassportElementTypePhoneNumber();

  /// Parse from a json
  PassportElementTypePhoneNumber.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementTypePhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTypeEmailAddress implements PassportElementType {
  /// A Telegram Passport element containing the user's email address.
  ///
  PassportElementTypeEmailAddress();

  /// Parse from a json
  PassportElementTypeEmailAddress.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = 'passportElementTypeEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}
