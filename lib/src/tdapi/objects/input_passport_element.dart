part of '../tdapi.dart';

class InputPassportElement extends TdObject {
  /// Contains information about a Telegram Passport element to be saved
  InputPassportElement();

  /// a InputPassportElement return type can be :
  /// * InputPassportElementPersonalDetails
  /// * InputPassportElementPassport
  /// * InputPassportElementDriverLicense
  /// * InputPassportElementIdentityCard
  /// * InputPassportElementInternalPassport
  /// * InputPassportElementAddress
  /// * InputPassportElementUtilityBill
  /// * InputPassportElementBankStatement
  /// * InputPassportElementRentalAgreement
  /// * InputPassportElementPassportRegistration
  /// * InputPassportElementTemporaryRegistration
  /// * InputPassportElementPhoneNumber
  /// * InputPassportElementEmailAddress
  factory InputPassportElement.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputPassportElementPersonalDetails.CONSTRUCTOR:
        return InputPassportElementPersonalDetails.fromJson(json);
      case InputPassportElementPassport.CONSTRUCTOR:
        return InputPassportElementPassport.fromJson(json);
      case InputPassportElementDriverLicense.CONSTRUCTOR:
        return InputPassportElementDriverLicense.fromJson(json);
      case InputPassportElementIdentityCard.CONSTRUCTOR:
        return InputPassportElementIdentityCard.fromJson(json);
      case InputPassportElementInternalPassport.CONSTRUCTOR:
        return InputPassportElementInternalPassport.fromJson(json);
      case InputPassportElementAddress.CONSTRUCTOR:
        return InputPassportElementAddress.fromJson(json);
      case InputPassportElementUtilityBill.CONSTRUCTOR:
        return InputPassportElementUtilityBill.fromJson(json);
      case InputPassportElementBankStatement.CONSTRUCTOR:
        return InputPassportElementBankStatement.fromJson(json);
      case InputPassportElementRentalAgreement.CONSTRUCTOR:
        return InputPassportElementRentalAgreement.fromJson(json);
      case InputPassportElementPassportRegistration.CONSTRUCTOR:
        return InputPassportElementPassportRegistration.fromJson(json);
      case InputPassportElementTemporaryRegistration.CONSTRUCTOR:
        return InputPassportElementTemporaryRegistration.fromJson(json);
      case InputPassportElementPhoneNumber.CONSTRUCTOR:
        return InputPassportElementPhoneNumber.fromJson(json);
      case InputPassportElementEmailAddress.CONSTRUCTOR:
        return InputPassportElementEmailAddress.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'inputPassportElement';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementPersonalDetails extends InputPassportElement {
  /// A Telegram Passport element to be saved containing the user's personal details
  InputPassportElementPersonalDetails({this.personalDetails});

  /// [personalDetails] Personal details of the user
  PersonalDetails personalDetails;

  /// Parse from a json
  InputPassportElementPersonalDetails.fromJson(Map<String, dynamic> json) {
    this.personalDetails = PersonalDetails.fromJson(
        json['personal_details'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "personal_details":
          this.personalDetails == null ? null : this.personalDetails.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementPersonalDetails';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementPassport extends InputPassportElement {
  /// A Telegram Passport element to be saved containing the user's passport
  InputPassportElementPassport({this.passport});

  /// [passport] The passport to be saved
  InputIdentityDocument passport;

  /// Parse from a json
  InputPassportElementPassport.fromJson(Map<String, dynamic> json) {
    this.passport =
        InputIdentityDocument.fromJson(json['passport'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "passport": this.passport == null ? null : this.passport.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementPassport';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementDriverLicense extends InputPassportElement {
  /// A Telegram Passport element to be saved containing the user's driver license
  InputPassportElementDriverLicense({this.driverLicense});

  /// [driverLicense] The driver license to be saved
  InputIdentityDocument driverLicense;

  /// Parse from a json
  InputPassportElementDriverLicense.fromJson(Map<String, dynamic> json) {
    this.driverLicense = InputIdentityDocument.fromJson(
        json['driver_license'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "driver_license":
          this.driverLicense == null ? null : this.driverLicense.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementDriverLicense';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementIdentityCard extends InputPassportElement {
  /// A Telegram Passport element to be saved containing the user's identity card
  InputPassportElementIdentityCard({this.identityCard});

  /// [identityCard] The identity card to be saved
  InputIdentityDocument identityCard;

  /// Parse from a json
  InputPassportElementIdentityCard.fromJson(Map<String, dynamic> json) {
    this.identityCard = InputIdentityDocument.fromJson(
        json['identity_card'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "identity_card":
          this.identityCard == null ? null : this.identityCard.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementIdentityCard';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementInternalPassport extends InputPassportElement {
  /// A Telegram Passport element to be saved containing the user's internal passport
  InputPassportElementInternalPassport({this.internalPassport});

  /// [internalPassport] The internal passport to be saved
  InputIdentityDocument internalPassport;

  /// Parse from a json
  InputPassportElementInternalPassport.fromJson(Map<String, dynamic> json) {
    this.internalPassport = InputIdentityDocument.fromJson(
        json['internal_passport'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "internal_passport":
          this.internalPassport == null ? null : this.internalPassport.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementInternalPassport';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementAddress extends InputPassportElement {
  /// A Telegram Passport element to be saved containing the user's address
  InputPassportElementAddress({this.address});

  /// [address] The address to be saved
  Address address;

  /// Parse from a json
  InputPassportElementAddress.fromJson(Map<String, dynamic> json) {
    this.address = Address.fromJson(json['address'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "address": this.address == null ? null : this.address.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementUtilityBill extends InputPassportElement {
  /// A Telegram Passport element to be saved containing the user's utility bill
  InputPassportElementUtilityBill({this.utilityBill});

  /// [utilityBill] The utility bill to be saved
  InputPersonalDocument utilityBill;

  /// Parse from a json
  InputPassportElementUtilityBill.fromJson(Map<String, dynamic> json) {
    this.utilityBill = InputPersonalDocument.fromJson(
        json['utility_bill'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "utility_bill":
          this.utilityBill == null ? null : this.utilityBill.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementUtilityBill';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementBankStatement extends InputPassportElement {
  /// A Telegram Passport element to be saved containing the user's bank statement
  InputPassportElementBankStatement({this.bankStatement});

  /// [bankStatement] The bank statement to be saved
  InputPersonalDocument bankStatement;

  /// Parse from a json
  InputPassportElementBankStatement.fromJson(Map<String, dynamic> json) {
    this.bankStatement = InputPersonalDocument.fromJson(
        json['bank_statement'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bank_statement":
          this.bankStatement == null ? null : this.bankStatement.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementBankStatement';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementRentalAgreement extends InputPassportElement {
  /// A Telegram Passport element to be saved containing the user's rental agreement
  InputPassportElementRentalAgreement({this.rentalAgreement});

  /// [rentalAgreement] The rental agreement to be saved
  InputPersonalDocument rentalAgreement;

  /// Parse from a json
  InputPassportElementRentalAgreement.fromJson(Map<String, dynamic> json) {
    this.rentalAgreement = InputPersonalDocument.fromJson(
        json['rental_agreement'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "rental_agreement":
          this.rentalAgreement == null ? null : this.rentalAgreement.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementRentalAgreement';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementPassportRegistration extends InputPassportElement {
  /// A Telegram Passport element to be saved containing the user's passport registration
  InputPassportElementPassportRegistration({this.passportRegistration});

  /// [passportRegistration] The passport registration page to be saved
  InputPersonalDocument passportRegistration;

  /// Parse from a json
  InputPassportElementPassportRegistration.fromJson(Map<String, dynamic> json) {
    this.passportRegistration = InputPersonalDocument.fromJson(
        json['passport_registration'] ?? <String, dynamic>{});
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

  static const CONSTRUCTOR = 'inputPassportElementPassportRegistration';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementTemporaryRegistration extends InputPassportElement {
  /// A Telegram Passport element to be saved containing the user's temporary registration
  InputPassportElementTemporaryRegistration({this.temporaryRegistration});

  /// [temporaryRegistration] The temporary registration document to be saved
  InputPersonalDocument temporaryRegistration;

  /// Parse from a json
  InputPassportElementTemporaryRegistration.fromJson(
      Map<String, dynamic> json) {
    this.temporaryRegistration = InputPersonalDocument.fromJson(
        json['temporary_registration'] ?? <String, dynamic>{});
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

  static const CONSTRUCTOR = 'inputPassportElementTemporaryRegistration';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementPhoneNumber extends InputPassportElement {
  /// A Telegram Passport element to be saved containing the user's phone number
  InputPassportElementPhoneNumber({this.phoneNumber});

  /// [phoneNumber] The phone number to be saved
  String phoneNumber;

  /// Parse from a json
  InputPassportElementPhoneNumber.fromJson(Map<String, dynamic> json) {
    this.phoneNumber = json['phone_number'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": this.phoneNumber,
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputPassportElementEmailAddress extends InputPassportElement {
  /// A Telegram Passport element to be saved containing the user's email address
  InputPassportElementEmailAddress({this.emailAddress});

  /// [emailAddress] The email address to be saved
  String emailAddress;

  /// Parse from a json
  InputPassportElementEmailAddress.fromJson(Map<String, dynamic> json) {
    this.emailAddress = json['email_address'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "email_address": this.emailAddress,
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementEmailAddress';

  @override
  String getConstructor() => CONSTRUCTOR;
}
