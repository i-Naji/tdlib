part of '../tdapi.dart';

class InputPassportElement extends TdObject {

  /// Contains information about a Telegram Passport element to be saved
  const InputPassportElement();
  
  /// a InputPassportElement return type can be :
  /// * [InputPassportElementPersonalDetails]
  /// * [InputPassportElementPassport]
  /// * [InputPassportElementDriverLicense]
  /// * [InputPassportElementIdentityCard]
  /// * [InputPassportElementInternalPassport]
  /// * [InputPassportElementAddress]
  /// * [InputPassportElementUtilityBill]
  /// * [InputPassportElementBankStatement]
  /// * [InputPassportElementRentalAgreement]
  /// * [InputPassportElementPassportRegistration]
  /// * [InputPassportElementTemporaryRegistration]
  /// * [InputPassportElementPhoneNumber]
  /// * [InputPassportElementEmailAddress]
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
        return const InputPassportElement();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InputPassportElement copyWith() => const InputPassportElement();

  static const CONSTRUCTOR = 'inputPassportElement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputPassportElementPersonalDetails extends InputPassportElement {

  /// A Telegram Passport element to be saved containing the user's personal details
  const InputPassportElementPersonalDetails({
    required this.personalDetails,
  });
  
  /// [personalDetails] Personal details of the user
  final PersonalDetails personalDetails;
  
  /// Parse from a json
  factory InputPassportElementPersonalDetails.fromJson(Map<String, dynamic> json) => InputPassportElementPersonalDetails(
    personalDetails: PersonalDetails.fromJson(json['personal_details']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "personal_details": personalDetails.toJson(),
    };
  }
  
  @override
  InputPassportElementPersonalDetails copyWith({
    PersonalDetails? personalDetails,
  }) => InputPassportElementPersonalDetails(
    personalDetails: personalDetails ?? this.personalDetails,
  );

  static const CONSTRUCTOR = 'inputPassportElementPersonalDetails';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputPassportElementPassport extends InputPassportElement {

  /// A Telegram Passport element to be saved containing the user's passport
  const InputPassportElementPassport({
    required this.passport,
  });
  
  /// [passport] The passport to be saved
  final InputIdentityDocument passport;
  
  /// Parse from a json
  factory InputPassportElementPassport.fromJson(Map<String, dynamic> json) => InputPassportElementPassport(
    passport: InputIdentityDocument.fromJson(json['passport']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "passport": passport.toJson(),
    };
  }
  
  @override
  InputPassportElementPassport copyWith({
    InputIdentityDocument? passport,
  }) => InputPassportElementPassport(
    passport: passport ?? this.passport,
  );

  static const CONSTRUCTOR = 'inputPassportElementPassport';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputPassportElementDriverLicense extends InputPassportElement {

  /// A Telegram Passport element to be saved containing the user's driver license
  const InputPassportElementDriverLicense({
    required this.driverLicense,
  });
  
  /// [driverLicense] The driver license to be saved
  final InputIdentityDocument driverLicense;
  
  /// Parse from a json
  factory InputPassportElementDriverLicense.fromJson(Map<String, dynamic> json) => InputPassportElementDriverLicense(
    driverLicense: InputIdentityDocument.fromJson(json['driver_license']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "driver_license": driverLicense.toJson(),
    };
  }
  
  @override
  InputPassportElementDriverLicense copyWith({
    InputIdentityDocument? driverLicense,
  }) => InputPassportElementDriverLicense(
    driverLicense: driverLicense ?? this.driverLicense,
  );

  static const CONSTRUCTOR = 'inputPassportElementDriverLicense';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputPassportElementIdentityCard extends InputPassportElement {

  /// A Telegram Passport element to be saved containing the user's identity card
  const InputPassportElementIdentityCard({
    required this.identityCard,
  });
  
  /// [identityCard] The identity card to be saved
  final InputIdentityDocument identityCard;
  
  /// Parse from a json
  factory InputPassportElementIdentityCard.fromJson(Map<String, dynamic> json) => InputPassportElementIdentityCard(
    identityCard: InputIdentityDocument.fromJson(json['identity_card']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "identity_card": identityCard.toJson(),
    };
  }
  
  @override
  InputPassportElementIdentityCard copyWith({
    InputIdentityDocument? identityCard,
  }) => InputPassportElementIdentityCard(
    identityCard: identityCard ?? this.identityCard,
  );

  static const CONSTRUCTOR = 'inputPassportElementIdentityCard';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputPassportElementInternalPassport extends InputPassportElement {

  /// A Telegram Passport element to be saved containing the user's internal passport
  const InputPassportElementInternalPassport({
    required this.internalPassport,
  });
  
  /// [internalPassport] The internal passport to be saved
  final InputIdentityDocument internalPassport;
  
  /// Parse from a json
  factory InputPassportElementInternalPassport.fromJson(Map<String, dynamic> json) => InputPassportElementInternalPassport(
    internalPassport: InputIdentityDocument.fromJson(json['internal_passport']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "internal_passport": internalPassport.toJson(),
    };
  }
  
  @override
  InputPassportElementInternalPassport copyWith({
    InputIdentityDocument? internalPassport,
  }) => InputPassportElementInternalPassport(
    internalPassport: internalPassport ?? this.internalPassport,
  );

  static const CONSTRUCTOR = 'inputPassportElementInternalPassport';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputPassportElementAddress extends InputPassportElement {

  /// A Telegram Passport element to be saved containing the user's address
  const InputPassportElementAddress({
    required this.address,
  });
  
  /// [address] The address to be saved
  final Address address;
  
  /// Parse from a json
  factory InputPassportElementAddress.fromJson(Map<String, dynamic> json) => InputPassportElementAddress(
    address: Address.fromJson(json['address']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "address": address.toJson(),
    };
  }
  
  @override
  InputPassportElementAddress copyWith({
    Address? address,
  }) => InputPassportElementAddress(
    address: address ?? this.address,
  );

  static const CONSTRUCTOR = 'inputPassportElementAddress';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputPassportElementUtilityBill extends InputPassportElement {

  /// A Telegram Passport element to be saved containing the user's utility bill
  const InputPassportElementUtilityBill({
    required this.utilityBill,
  });
  
  /// [utilityBill] The utility bill to be saved
  final InputPersonalDocument utilityBill;
  
  /// Parse from a json
  factory InputPassportElementUtilityBill.fromJson(Map<String, dynamic> json) => InputPassportElementUtilityBill(
    utilityBill: InputPersonalDocument.fromJson(json['utility_bill']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "utility_bill": utilityBill.toJson(),
    };
  }
  
  @override
  InputPassportElementUtilityBill copyWith({
    InputPersonalDocument? utilityBill,
  }) => InputPassportElementUtilityBill(
    utilityBill: utilityBill ?? this.utilityBill,
  );

  static const CONSTRUCTOR = 'inputPassportElementUtilityBill';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputPassportElementBankStatement extends InputPassportElement {

  /// A Telegram Passport element to be saved containing the user's bank statement
  const InputPassportElementBankStatement({
    required this.bankStatement,
  });
  
  /// [bankStatement] The bank statement to be saved
  final InputPersonalDocument bankStatement;
  
  /// Parse from a json
  factory InputPassportElementBankStatement.fromJson(Map<String, dynamic> json) => InputPassportElementBankStatement(
    bankStatement: InputPersonalDocument.fromJson(json['bank_statement']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bank_statement": bankStatement.toJson(),
    };
  }
  
  @override
  InputPassportElementBankStatement copyWith({
    InputPersonalDocument? bankStatement,
  }) => InputPassportElementBankStatement(
    bankStatement: bankStatement ?? this.bankStatement,
  );

  static const CONSTRUCTOR = 'inputPassportElementBankStatement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputPassportElementRentalAgreement extends InputPassportElement {

  /// A Telegram Passport element to be saved containing the user's rental agreement
  const InputPassportElementRentalAgreement({
    required this.rentalAgreement,
  });
  
  /// [rentalAgreement] The rental agreement to be saved
  final InputPersonalDocument rentalAgreement;
  
  /// Parse from a json
  factory InputPassportElementRentalAgreement.fromJson(Map<String, dynamic> json) => InputPassportElementRentalAgreement(
    rentalAgreement: InputPersonalDocument.fromJson(json['rental_agreement']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "rental_agreement": rentalAgreement.toJson(),
    };
  }
  
  @override
  InputPassportElementRentalAgreement copyWith({
    InputPersonalDocument? rentalAgreement,
  }) => InputPassportElementRentalAgreement(
    rentalAgreement: rentalAgreement ?? this.rentalAgreement,
  );

  static const CONSTRUCTOR = 'inputPassportElementRentalAgreement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputPassportElementPassportRegistration extends InputPassportElement {

  /// A Telegram Passport element to be saved containing the user's passport registration
  const InputPassportElementPassportRegistration({
    required this.passportRegistration,
  });
  
  /// [passportRegistration] The passport registration page to be saved
  final InputPersonalDocument passportRegistration;
  
  /// Parse from a json
  factory InputPassportElementPassportRegistration.fromJson(Map<String, dynamic> json) => InputPassportElementPassportRegistration(
    passportRegistration: InputPersonalDocument.fromJson(json['passport_registration']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "passport_registration": passportRegistration.toJson(),
    };
  }
  
  @override
  InputPassportElementPassportRegistration copyWith({
    InputPersonalDocument? passportRegistration,
  }) => InputPassportElementPassportRegistration(
    passportRegistration: passportRegistration ?? this.passportRegistration,
  );

  static const CONSTRUCTOR = 'inputPassportElementPassportRegistration';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputPassportElementTemporaryRegistration extends InputPassportElement {

  /// A Telegram Passport element to be saved containing the user's temporary registration
  const InputPassportElementTemporaryRegistration({
    required this.temporaryRegistration,
  });
  
  /// [temporaryRegistration] The temporary registration document to be saved
  final InputPersonalDocument temporaryRegistration;
  
  /// Parse from a json
  factory InputPassportElementTemporaryRegistration.fromJson(Map<String, dynamic> json) => InputPassportElementTemporaryRegistration(
    temporaryRegistration: InputPersonalDocument.fromJson(json['temporary_registration']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "temporary_registration": temporaryRegistration.toJson(),
    };
  }
  
  @override
  InputPassportElementTemporaryRegistration copyWith({
    InputPersonalDocument? temporaryRegistration,
  }) => InputPassportElementTemporaryRegistration(
    temporaryRegistration: temporaryRegistration ?? this.temporaryRegistration,
  );

  static const CONSTRUCTOR = 'inputPassportElementTemporaryRegistration';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputPassportElementPhoneNumber extends InputPassportElement {

  /// A Telegram Passport element to be saved containing the user's phone number
  const InputPassportElementPhoneNumber({
    required this.phoneNumber,
  });
  
  /// [phoneNumber] The phone number to be saved
  final String phoneNumber;
  
  /// Parse from a json
  factory InputPassportElementPhoneNumber.fromJson(Map<String, dynamic> json) => InputPassportElementPhoneNumber(
    phoneNumber: json['phone_number'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": phoneNumber,
    };
  }
  
  @override
  InputPassportElementPhoneNumber copyWith({
    String? phoneNumber,
  }) => InputPassportElementPhoneNumber(
    phoneNumber: phoneNumber ?? this.phoneNumber,
  );

  static const CONSTRUCTOR = 'inputPassportElementPhoneNumber';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class InputPassportElementEmailAddress extends InputPassportElement {

  /// A Telegram Passport element to be saved containing the user's email address
  const InputPassportElementEmailAddress({
    required this.emailAddress,
  });
  
  /// [emailAddress] The email address to be saved
  final String emailAddress;
  
  /// Parse from a json
  factory InputPassportElementEmailAddress.fromJson(Map<String, dynamic> json) => InputPassportElementEmailAddress(
    emailAddress: json['email_address'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "email_address": emailAddress,
    };
  }
  
  @override
  InputPassportElementEmailAddress copyWith({
    String? emailAddress,
  }) => InputPassportElementEmailAddress(
    emailAddress: emailAddress ?? this.emailAddress,
  );

  static const CONSTRUCTOR = 'inputPassportElementEmailAddress';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
