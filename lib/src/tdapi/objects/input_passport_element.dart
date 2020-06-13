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
  factory InputPassportElement.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
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
    return {
      
    };
  }

  static const CONSTRUCTOR = 'inputPassportElement';
}

class InputPassportElementPersonalDetails extends InputPassportElement {
  PersonalDetails personalDetails;

  /// A Telegram Passport element to be saved containing the user's personal details. 
  /// [personalDetails] Personal details of the user
  InputPassportElementPersonalDetails({this.personalDetails});

  /// Parse from a json
  InputPassportElementPersonalDetails.fromJson(Map<String, dynamic> json)  {
    this.personalDetails = PersonalDetails.fromJson(json['personal_details'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "personal_details": this.personalDetails.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementPersonalDetails';
}

class InputPassportElementPassport extends InputPassportElement {
  InputIdentityDocument passport;

  /// A Telegram Passport element to be saved containing the user's passport. 
  /// [passport] The passport to be saved
  InputPassportElementPassport({this.passport});

  /// Parse from a json
  InputPassportElementPassport.fromJson(Map<String, dynamic> json)  {
    this.passport = InputIdentityDocument.fromJson(json['passport'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "passport": this.passport.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementPassport';
}

class InputPassportElementDriverLicense extends InputPassportElement {
  InputIdentityDocument driverLicense;

  /// A Telegram Passport element to be saved containing the user's driver license. 
  /// [driverLicense] The driver license to be saved
  InputPassportElementDriverLicense({this.driverLicense});

  /// Parse from a json
  InputPassportElementDriverLicense.fromJson(Map<String, dynamic> json)  {
    this.driverLicense = InputIdentityDocument.fromJson(json['driver_license'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "driver_license": this.driverLicense.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementDriverLicense';
}

class InputPassportElementIdentityCard extends InputPassportElement {
  InputIdentityDocument identityCard;

  /// A Telegram Passport element to be saved containing the user's identity card. 
  /// [identityCard] The identity card to be saved
  InputPassportElementIdentityCard({this.identityCard});

  /// Parse from a json
  InputPassportElementIdentityCard.fromJson(Map<String, dynamic> json)  {
    this.identityCard = InputIdentityDocument.fromJson(json['identity_card'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "identity_card": this.identityCard.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementIdentityCard';
}

class InputPassportElementInternalPassport extends InputPassportElement {
  InputIdentityDocument internalPassport;

  /// A Telegram Passport element to be saved containing the user's internal passport. 
  /// [internalPassport] The internal passport to be saved
  InputPassportElementInternalPassport({this.internalPassport});

  /// Parse from a json
  InputPassportElementInternalPassport.fromJson(Map<String, dynamic> json)  {
    this.internalPassport = InputIdentityDocument.fromJson(json['internal_passport'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "internal_passport": this.internalPassport.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementInternalPassport';
}

class InputPassportElementAddress extends InputPassportElement {
  Address address;

  /// A Telegram Passport element to be saved containing the user's address. 
  /// [address] The address to be saved
  InputPassportElementAddress({this.address});

  /// Parse from a json
  InputPassportElementAddress.fromJson(Map<String, dynamic> json)  {
    this.address = Address.fromJson(json['address'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "address": this.address.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementAddress';
}

class InputPassportElementUtilityBill extends InputPassportElement {
  InputPersonalDocument utilityBill;

  /// A Telegram Passport element to be saved containing the user's utility bill. 
  /// [utilityBill] The utility bill to be saved
  InputPassportElementUtilityBill({this.utilityBill});

  /// Parse from a json
  InputPassportElementUtilityBill.fromJson(Map<String, dynamic> json)  {
    this.utilityBill = InputPersonalDocument.fromJson(json['utility_bill'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "utility_bill": this.utilityBill.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementUtilityBill';
}

class InputPassportElementBankStatement extends InputPassportElement {
  InputPersonalDocument bankStatement;

  /// A Telegram Passport element to be saved containing the user's bank statement. 
  /// [bankStatement] The bank statement to be saved
  InputPassportElementBankStatement({this.bankStatement});

  /// Parse from a json
  InputPassportElementBankStatement.fromJson(Map<String, dynamic> json)  {
    this.bankStatement = InputPersonalDocument.fromJson(json['bank_statement'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bank_statement": this.bankStatement.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementBankStatement';
}

class InputPassportElementRentalAgreement extends InputPassportElement {
  InputPersonalDocument rentalAgreement;

  /// A Telegram Passport element to be saved containing the user's rental agreement. 
  /// [rentalAgreement] The rental agreement to be saved
  InputPassportElementRentalAgreement({this.rentalAgreement});

  /// Parse from a json
  InputPassportElementRentalAgreement.fromJson(Map<String, dynamic> json)  {
    this.rentalAgreement = InputPersonalDocument.fromJson(json['rental_agreement'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "rental_agreement": this.rentalAgreement.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementRentalAgreement';
}

class InputPassportElementPassportRegistration extends InputPassportElement {
  InputPersonalDocument passportRegistration;

  /// A Telegram Passport element to be saved containing the user's passport registration. 
  /// [passportRegistration] The passport registration page to be saved
  InputPassportElementPassportRegistration({this.passportRegistration});

  /// Parse from a json
  InputPassportElementPassportRegistration.fromJson(Map<String, dynamic> json)  {
    this.passportRegistration = InputPersonalDocument.fromJson(json['passport_registration'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "passport_registration": this.passportRegistration.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementPassportRegistration';
}

class InputPassportElementTemporaryRegistration extends InputPassportElement {
  InputPersonalDocument temporaryRegistration;

  /// A Telegram Passport element to be saved containing the user's temporary registration. 
  /// [temporaryRegistration] The temporary registration document to be saved
  InputPassportElementTemporaryRegistration({this.temporaryRegistration});

  /// Parse from a json
  InputPassportElementTemporaryRegistration.fromJson(Map<String, dynamic> json)  {
    this.temporaryRegistration = InputPersonalDocument.fromJson(json['temporary_registration'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "temporary_registration": this.temporaryRegistration.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputPassportElementTemporaryRegistration';
}

class InputPassportElementPhoneNumber extends InputPassportElement {
  String phoneNumber;

  /// A Telegram Passport element to be saved containing the user's phone number. 
  /// [phoneNumber] The phone number to be saved
  InputPassportElementPhoneNumber({this.phoneNumber});

  /// Parse from a json
  InputPassportElementPhoneNumber.fromJson(Map<String, dynamic> json)  {
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
}

class InputPassportElementEmailAddress extends InputPassportElement {
  String emailAddress;

  /// A Telegram Passport element to be saved containing the user's email address. 
  /// [emailAddress] The email address to be saved
  InputPassportElementEmailAddress({this.emailAddress});

  /// Parse from a json
  InputPassportElementEmailAddress.fromJson(Map<String, dynamic> json)  {
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
}