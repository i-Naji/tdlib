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
  factory PassportElement.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
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
    return {
      
    };
  }

  static const CONSTRUCTOR = 'passportElement';
}

class PassportElementPersonalDetails extends PassportElement {
  PersonalDetails personalDetails;
  dynamic extra;

  /// A Telegram Passport element containing the user's personal details. 
  /// [personalDetails] Personal details of the user
  PassportElementPersonalDetails({this.personalDetails});

  /// Parse from a json
  PassportElementPersonalDetails.fromJson(Map<String, dynamic> json)  {
    this.personalDetails = PersonalDetails.fromJson(json['personal_details'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "personal_details": this.personalDetails.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementPersonalDetails';
}

class PassportElementPassport extends PassportElement {
  IdentityDocument passport;
  dynamic extra;

  /// A Telegram Passport element containing the user's passport. 
  /// [passport] Passport
  PassportElementPassport({this.passport});

  /// Parse from a json
  PassportElementPassport.fromJson(Map<String, dynamic> json)  {
    this.passport = IdentityDocument.fromJson(json['passport'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "passport": this.passport.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementPassport';
}

class PassportElementDriverLicense extends PassportElement {
  IdentityDocument driverLicense;
  dynamic extra;

  /// A Telegram Passport element containing the user's driver license. 
  /// [driverLicense] Driver license
  PassportElementDriverLicense({this.driverLicense});

  /// Parse from a json
  PassportElementDriverLicense.fromJson(Map<String, dynamic> json)  {
    this.driverLicense = IdentityDocument.fromJson(json['driver_license'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "driver_license": this.driverLicense.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementDriverLicense';
}

class PassportElementIdentityCard extends PassportElement {
  IdentityDocument identityCard;
  dynamic extra;

  /// A Telegram Passport element containing the user's identity card. 
  /// [identityCard] Identity card
  PassportElementIdentityCard({this.identityCard});

  /// Parse from a json
  PassportElementIdentityCard.fromJson(Map<String, dynamic> json)  {
    this.identityCard = IdentityDocument.fromJson(json['identity_card'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "identity_card": this.identityCard.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementIdentityCard';
}

class PassportElementInternalPassport extends PassportElement {
  IdentityDocument internalPassport;
  dynamic extra;

  /// A Telegram Passport element containing the user's internal passport. 
  /// [internalPassport] Internal passport
  PassportElementInternalPassport({this.internalPassport});

  /// Parse from a json
  PassportElementInternalPassport.fromJson(Map<String, dynamic> json)  {
    this.internalPassport = IdentityDocument.fromJson(json['internal_passport'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "internal_passport": this.internalPassport.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementInternalPassport';
}

class PassportElementAddress extends PassportElement {
  Address address;
  dynamic extra;

  /// A Telegram Passport element containing the user's address. 
  /// [address] Address
  PassportElementAddress({this.address});

  /// Parse from a json
  PassportElementAddress.fromJson(Map<String, dynamic> json)  {
    this.address = Address.fromJson(json['address'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "address": this.address.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementAddress';
}

class PassportElementUtilityBill extends PassportElement {
  PersonalDocument utilityBill;
  dynamic extra;

  /// A Telegram Passport element containing the user's utility bill. 
  /// [utilityBill] Utility bill
  PassportElementUtilityBill({this.utilityBill});

  /// Parse from a json
  PassportElementUtilityBill.fromJson(Map<String, dynamic> json)  {
    this.utilityBill = PersonalDocument.fromJson(json['utility_bill'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "utility_bill": this.utilityBill.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementUtilityBill';
}

class PassportElementBankStatement extends PassportElement {
  PersonalDocument bankStatement;
  dynamic extra;

  /// A Telegram Passport element containing the user's bank statement. 
  /// [bankStatement] Bank statement
  PassportElementBankStatement({this.bankStatement});

  /// Parse from a json
  PassportElementBankStatement.fromJson(Map<String, dynamic> json)  {
    this.bankStatement = PersonalDocument.fromJson(json['bank_statement'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bank_statement": this.bankStatement.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementBankStatement';
}

class PassportElementRentalAgreement extends PassportElement {
  PersonalDocument rentalAgreement;
  dynamic extra;

  /// A Telegram Passport element containing the user's rental agreement. 
  /// [rentalAgreement] Rental agreement
  PassportElementRentalAgreement({this.rentalAgreement});

  /// Parse from a json
  PassportElementRentalAgreement.fromJson(Map<String, dynamic> json)  {
    this.rentalAgreement = PersonalDocument.fromJson(json['rental_agreement'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "rental_agreement": this.rentalAgreement.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementRentalAgreement';
}

class PassportElementPassportRegistration extends PassportElement {
  PersonalDocument passportRegistration;
  dynamic extra;

  /// A Telegram Passport element containing the user's passport registration pages. 
  /// [passportRegistration] Passport registration pages
  PassportElementPassportRegistration({this.passportRegistration});

  /// Parse from a json
  PassportElementPassportRegistration.fromJson(Map<String, dynamic> json)  {
    this.passportRegistration = PersonalDocument.fromJson(json['passport_registration'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "passport_registration": this.passportRegistration.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementPassportRegistration';
}

class PassportElementTemporaryRegistration extends PassportElement {
  PersonalDocument temporaryRegistration;
  dynamic extra;

  /// A Telegram Passport element containing the user's temporary registration. 
  /// [temporaryRegistration] Temporary registration
  PassportElementTemporaryRegistration({this.temporaryRegistration});

  /// Parse from a json
  PassportElementTemporaryRegistration.fromJson(Map<String, dynamic> json)  {
    this.temporaryRegistration = PersonalDocument.fromJson(json['temporary_registration'] ?? <String, dynamic>{});
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "temporary_registration": this.temporaryRegistration.toJson(),
    };
  }

  static const CONSTRUCTOR = 'passportElementTemporaryRegistration';
}

class PassportElementPhoneNumber extends PassportElement {
  String phoneNumber;
  dynamic extra;

  /// A Telegram Passport element containing the user's phone number. 
  /// [phoneNumber] Phone number
  PassportElementPhoneNumber({this.phoneNumber});

  /// Parse from a json
  PassportElementPhoneNumber.fromJson(Map<String, dynamic> json)  {
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
}

class PassportElementEmailAddress extends PassportElement {
  String emailAddress;
  dynamic extra;

  /// A Telegram Passport element containing the user's email address. 
  /// [emailAddress] Email address
  PassportElementEmailAddress({this.emailAddress});

  /// Parse from a json
  PassportElementEmailAddress.fromJson(Map<String, dynamic> json)  {
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
}