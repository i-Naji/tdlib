part of '../tdapi.dart';

class PassportElement extends TdObject {
  /// Contains information about a Telegram Passport element
  PassportElement();

  /// a PassportElement return type can be :
  /// * PassportElementPersonalDetails
  /// * PassportElementPassport
  /// * PassportElementDriverLicense
  /// * PassportElementIdentityCard
  /// * PassportElementInternalPassport
  /// * PassportElementAddress
  /// * PassportElementUtilityBill
  /// * PassportElementBankStatement
  /// * PassportElementRentalAgreement
  /// * PassportElementPassportRegistration
  /// * PassportElementTemporaryRegistration
  /// * PassportElementPhoneNumber
  /// * PassportElementEmailAddress
  factory PassportElement.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PassportElementPersonalDetails.CONSTRUCTOR:
        return PassportElementPersonalDetails.fromJson(json);
      case PassportElementPassport.CONSTRUCTOR:
        return PassportElementPassport.fromJson(json);
      case PassportElementDriverLicense.CONSTRUCTOR:
        return PassportElementDriverLicense.fromJson(json);
      case PassportElementIdentityCard.CONSTRUCTOR:
        return PassportElementIdentityCard.fromJson(json);
      case PassportElementInternalPassport.CONSTRUCTOR:
        return PassportElementInternalPassport.fromJson(json);
      case PassportElementAddress.CONSTRUCTOR:
        return PassportElementAddress.fromJson(json);
      case PassportElementUtilityBill.CONSTRUCTOR:
        return PassportElementUtilityBill.fromJson(json);
      case PassportElementBankStatement.CONSTRUCTOR:
        return PassportElementBankStatement.fromJson(json);
      case PassportElementRentalAgreement.CONSTRUCTOR:
        return PassportElementRentalAgreement.fromJson(json);
      case PassportElementPassportRegistration.CONSTRUCTOR:
        return PassportElementPassportRegistration.fromJson(json);
      case PassportElementTemporaryRegistration.CONSTRUCTOR:
        return PassportElementTemporaryRegistration.fromJson(json);
      case PassportElementPhoneNumber.CONSTRUCTOR:
        return PassportElementPhoneNumber.fromJson(json);
      case PassportElementEmailAddress.CONSTRUCTOR:
        return PassportElementEmailAddress.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'passportElement';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementPersonalDetails extends PassportElement {
  /// A Telegram Passport element containing the user's personal details
  PassportElementPersonalDetails({this.personalDetails});

  /// [personalDetails] Personal details of the user
  PersonalDetails personalDetails;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PassportElementPersonalDetails.fromJson(Map<String, dynamic> json) {
    this.personalDetails = PersonalDetails.fromJson(
        json['personal_details'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "personal_details":
          this.personalDetails == null ? null : this.personalDetails.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementPersonalDetails';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementPassport extends PassportElement {
  /// A Telegram Passport element containing the user's passport
  PassportElementPassport({this.passport});

  /// [passport] Passport
  IdentityDocument passport;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PassportElementPassport.fromJson(Map<String, dynamic> json) {
    this.passport =
        IdentityDocument.fromJson(json['passport'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "passport": this.passport == null ? null : this.passport.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementPassport';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementDriverLicense extends PassportElement {
  /// A Telegram Passport element containing the user's driver license
  PassportElementDriverLicense({this.driverLicense});

  /// [driverLicense] Driver license
  IdentityDocument driverLicense;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PassportElementDriverLicense.fromJson(Map<String, dynamic> json) {
    this.driverLicense = IdentityDocument.fromJson(
        json['driver_license'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "driver_license":
          this.driverLicense == null ? null : this.driverLicense.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementDriverLicense';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementIdentityCard extends PassportElement {
  /// A Telegram Passport element containing the user's identity card
  PassportElementIdentityCard({this.identityCard});

  /// [identityCard] Identity card
  IdentityDocument identityCard;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PassportElementIdentityCard.fromJson(Map<String, dynamic> json) {
    this.identityCard =
        IdentityDocument.fromJson(json['identity_card'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "identity_card":
          this.identityCard == null ? null : this.identityCard.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementIdentityCard';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementInternalPassport extends PassportElement {
  /// A Telegram Passport element containing the user's internal passport
  PassportElementInternalPassport({this.internalPassport});

  /// [internalPassport] Internal passport
  IdentityDocument internalPassport;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PassportElementInternalPassport.fromJson(Map<String, dynamic> json) {
    this.internalPassport = IdentityDocument.fromJson(
        json['internal_passport'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "internal_passport":
          this.internalPassport == null ? null : this.internalPassport.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementInternalPassport';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementAddress extends PassportElement {
  /// A Telegram Passport element containing the user's address
  PassportElementAddress({this.address});

  /// [address] Address
  Address address;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PassportElementAddress.fromJson(Map<String, dynamic> json) {
    this.address = Address.fromJson(json['address'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "address": this.address == null ? null : this.address.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementUtilityBill extends PassportElement {
  /// A Telegram Passport element containing the user's utility bill
  PassportElementUtilityBill({this.utilityBill});

  /// [utilityBill] Utility bill
  PersonalDocument utilityBill;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PassportElementUtilityBill.fromJson(Map<String, dynamic> json) {
    this.utilityBill =
        PersonalDocument.fromJson(json['utility_bill'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "utility_bill":
          this.utilityBill == null ? null : this.utilityBill.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementUtilityBill';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementBankStatement extends PassportElement {
  /// A Telegram Passport element containing the user's bank statement
  PassportElementBankStatement({this.bankStatement});

  /// [bankStatement] Bank statement
  PersonalDocument bankStatement;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PassportElementBankStatement.fromJson(Map<String, dynamic> json) {
    this.bankStatement = PersonalDocument.fromJson(
        json['bank_statement'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bank_statement":
          this.bankStatement == null ? null : this.bankStatement.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementBankStatement';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementRentalAgreement extends PassportElement {
  /// A Telegram Passport element containing the user's rental agreement
  PassportElementRentalAgreement({this.rentalAgreement});

  /// [rentalAgreement] Rental agreement
  PersonalDocument rentalAgreement;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PassportElementRentalAgreement.fromJson(Map<String, dynamic> json) {
    this.rentalAgreement = PersonalDocument.fromJson(
        json['rental_agreement'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "rental_agreement":
          this.rentalAgreement == null ? null : this.rentalAgreement.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementRentalAgreement';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementPassportRegistration extends PassportElement {
  /// A Telegram Passport element containing the user's passport registration pages
  PassportElementPassportRegistration({this.passportRegistration});

  /// [passportRegistration] Passport registration pages
  PersonalDocument passportRegistration;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PassportElementPassportRegistration.fromJson(Map<String, dynamic> json) {
    this.passportRegistration = PersonalDocument.fromJson(
        json['passport_registration'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "passport_registration": this.passportRegistration == null
          ? null
          : this.passportRegistration.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementPassportRegistration';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementTemporaryRegistration extends PassportElement {
  /// A Telegram Passport element containing the user's temporary registration
  PassportElementTemporaryRegistration({this.temporaryRegistration});

  /// [temporaryRegistration] Temporary registration
  PersonalDocument temporaryRegistration;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PassportElementTemporaryRegistration.fromJson(Map<String, dynamic> json) {
    this.temporaryRegistration = PersonalDocument.fromJson(
        json['temporary_registration'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "temporary_registration": this.temporaryRegistration == null
          ? null
          : this.temporaryRegistration.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementTemporaryRegistration';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementPhoneNumber extends PassportElement {
  /// A Telegram Passport element containing the user's phone number
  PassportElementPhoneNumber({this.phoneNumber});

  /// [phoneNumber] Phone number
  String phoneNumber;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PassportElementPhoneNumber.fromJson(Map<String, dynamic> json) {
    this.phoneNumber = json['phone_number'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": this.phoneNumber,
    };
  }

  static const CONSTRUCTOR = 'passportElementPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PassportElementEmailAddress extends PassportElement {
  /// A Telegram Passport element containing the user's email address
  PassportElementEmailAddress({this.emailAddress});

  /// [emailAddress] Email address
  String emailAddress;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PassportElementEmailAddress.fromJson(Map<String, dynamic> json) {
    this.emailAddress = json['email_address'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "email_address": this.emailAddress,
    };
  }

  static const CONSTRUCTOR = 'passportElementEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}
