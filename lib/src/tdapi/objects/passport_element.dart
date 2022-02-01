part of '../tdapi.dart';

class PassportElement extends TdObject {

  /// Contains information about a Telegram Passport element
  const PassportElement();
  
  /// a PassportElement return type can be :
  /// * [PassportElementPersonalDetails]
  /// * [PassportElementPassport]
  /// * [PassportElementDriverLicense]
  /// * [PassportElementIdentityCard]
  /// * [PassportElementInternalPassport]
  /// * [PassportElementAddress]
  /// * [PassportElementUtilityBill]
  /// * [PassportElementBankStatement]
  /// * [PassportElementRentalAgreement]
  /// * [PassportElementPassportRegistration]
  /// * [PassportElementTemporaryRegistration]
  /// * [PassportElementPhoneNumber]
  /// * [PassportElementEmailAddress]
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
        return const PassportElement();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PassportElement copyWith() => const PassportElement();

  static const CONSTRUCTOR = 'passportElement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementPersonalDetails extends PassportElement {

  /// A Telegram Passport element containing the user's personal details
  const PassportElementPersonalDetails({
    required this.personalDetails,
    this.extra,
    this.clientId,
  });
  
  /// [personalDetails] Personal details of the user
  final PersonalDetails personalDetails;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementPersonalDetails.fromJson(Map<String, dynamic> json) => PassportElementPersonalDetails(
    personalDetails: PersonalDetails.fromJson(json['personal_details']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "personal_details": personalDetails.toJson(),
    };
  }
  
  @override
  PassportElementPersonalDetails copyWith({
    PersonalDetails? personalDetails,
    dynamic extra,
    int? clientId,
  }) => PassportElementPersonalDetails(
    personalDetails: personalDetails ?? this.personalDetails,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportElementPersonalDetails';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementPassport extends PassportElement {

  /// A Telegram Passport element containing the user's passport
  const PassportElementPassport({
    required this.passport,
    this.extra,
    this.clientId,
  });
  
  /// [passport] Passport
  final IdentityDocument passport;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementPassport.fromJson(Map<String, dynamic> json) => PassportElementPassport(
    passport: IdentityDocument.fromJson(json['passport']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "passport": passport.toJson(),
    };
  }
  
  @override
  PassportElementPassport copyWith({
    IdentityDocument? passport,
    dynamic extra,
    int? clientId,
  }) => PassportElementPassport(
    passport: passport ?? this.passport,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportElementPassport';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementDriverLicense extends PassportElement {

  /// A Telegram Passport element containing the user's driver license
  const PassportElementDriverLicense({
    required this.driverLicense,
    this.extra,
    this.clientId,
  });
  
  /// [driverLicense] Driver license
  final IdentityDocument driverLicense;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementDriverLicense.fromJson(Map<String, dynamic> json) => PassportElementDriverLicense(
    driverLicense: IdentityDocument.fromJson(json['driver_license']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "driver_license": driverLicense.toJson(),
    };
  }
  
  @override
  PassportElementDriverLicense copyWith({
    IdentityDocument? driverLicense,
    dynamic extra,
    int? clientId,
  }) => PassportElementDriverLicense(
    driverLicense: driverLicense ?? this.driverLicense,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportElementDriverLicense';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementIdentityCard extends PassportElement {

  /// A Telegram Passport element containing the user's identity card
  const PassportElementIdentityCard({
    required this.identityCard,
    this.extra,
    this.clientId,
  });
  
  /// [identityCard] Identity card
  final IdentityDocument identityCard;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementIdentityCard.fromJson(Map<String, dynamic> json) => PassportElementIdentityCard(
    identityCard: IdentityDocument.fromJson(json['identity_card']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "identity_card": identityCard.toJson(),
    };
  }
  
  @override
  PassportElementIdentityCard copyWith({
    IdentityDocument? identityCard,
    dynamic extra,
    int? clientId,
  }) => PassportElementIdentityCard(
    identityCard: identityCard ?? this.identityCard,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportElementIdentityCard';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementInternalPassport extends PassportElement {

  /// A Telegram Passport element containing the user's internal passport
  const PassportElementInternalPassport({
    required this.internalPassport,
    this.extra,
    this.clientId,
  });
  
  /// [internalPassport] Internal passport
  final IdentityDocument internalPassport;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementInternalPassport.fromJson(Map<String, dynamic> json) => PassportElementInternalPassport(
    internalPassport: IdentityDocument.fromJson(json['internal_passport']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "internal_passport": internalPassport.toJson(),
    };
  }
  
  @override
  PassportElementInternalPassport copyWith({
    IdentityDocument? internalPassport,
    dynamic extra,
    int? clientId,
  }) => PassportElementInternalPassport(
    internalPassport: internalPassport ?? this.internalPassport,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportElementInternalPassport';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementAddress extends PassportElement {

  /// A Telegram Passport element containing the user's address
  const PassportElementAddress({
    required this.address,
    this.extra,
    this.clientId,
  });
  
  /// [address] Address
  final Address address;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementAddress.fromJson(Map<String, dynamic> json) => PassportElementAddress(
    address: Address.fromJson(json['address']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "address": address.toJson(),
    };
  }
  
  @override
  PassportElementAddress copyWith({
    Address? address,
    dynamic extra,
    int? clientId,
  }) => PassportElementAddress(
    address: address ?? this.address,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportElementAddress';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementUtilityBill extends PassportElement {

  /// A Telegram Passport element containing the user's utility bill
  const PassportElementUtilityBill({
    required this.utilityBill,
    this.extra,
    this.clientId,
  });
  
  /// [utilityBill] Utility bill
  final PersonalDocument utilityBill;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementUtilityBill.fromJson(Map<String, dynamic> json) => PassportElementUtilityBill(
    utilityBill: PersonalDocument.fromJson(json['utility_bill']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "utility_bill": utilityBill.toJson(),
    };
  }
  
  @override
  PassportElementUtilityBill copyWith({
    PersonalDocument? utilityBill,
    dynamic extra,
    int? clientId,
  }) => PassportElementUtilityBill(
    utilityBill: utilityBill ?? this.utilityBill,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportElementUtilityBill';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementBankStatement extends PassportElement {

  /// A Telegram Passport element containing the user's bank statement
  const PassportElementBankStatement({
    required this.bankStatement,
    this.extra,
    this.clientId,
  });
  
  /// [bankStatement] Bank statement
  final PersonalDocument bankStatement;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementBankStatement.fromJson(Map<String, dynamic> json) => PassportElementBankStatement(
    bankStatement: PersonalDocument.fromJson(json['bank_statement']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "bank_statement": bankStatement.toJson(),
    };
  }
  
  @override
  PassportElementBankStatement copyWith({
    PersonalDocument? bankStatement,
    dynamic extra,
    int? clientId,
  }) => PassportElementBankStatement(
    bankStatement: bankStatement ?? this.bankStatement,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportElementBankStatement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementRentalAgreement extends PassportElement {

  /// A Telegram Passport element containing the user's rental agreement
  const PassportElementRentalAgreement({
    required this.rentalAgreement,
    this.extra,
    this.clientId,
  });
  
  /// [rentalAgreement] Rental agreement
  final PersonalDocument rentalAgreement;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementRentalAgreement.fromJson(Map<String, dynamic> json) => PassportElementRentalAgreement(
    rentalAgreement: PersonalDocument.fromJson(json['rental_agreement']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "rental_agreement": rentalAgreement.toJson(),
    };
  }
  
  @override
  PassportElementRentalAgreement copyWith({
    PersonalDocument? rentalAgreement,
    dynamic extra,
    int? clientId,
  }) => PassportElementRentalAgreement(
    rentalAgreement: rentalAgreement ?? this.rentalAgreement,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportElementRentalAgreement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementPassportRegistration extends PassportElement {

  /// A Telegram Passport element containing the user's passport registration pages
  const PassportElementPassportRegistration({
    required this.passportRegistration,
    this.extra,
    this.clientId,
  });
  
  /// [passportRegistration] Passport registration pages
  final PersonalDocument passportRegistration;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementPassportRegistration.fromJson(Map<String, dynamic> json) => PassportElementPassportRegistration(
    passportRegistration: PersonalDocument.fromJson(json['passport_registration']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "passport_registration": passportRegistration.toJson(),
    };
  }
  
  @override
  PassportElementPassportRegistration copyWith({
    PersonalDocument? passportRegistration,
    dynamic extra,
    int? clientId,
  }) => PassportElementPassportRegistration(
    passportRegistration: passportRegistration ?? this.passportRegistration,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportElementPassportRegistration';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementTemporaryRegistration extends PassportElement {

  /// A Telegram Passport element containing the user's temporary registration
  const PassportElementTemporaryRegistration({
    required this.temporaryRegistration,
    this.extra,
    this.clientId,
  });
  
  /// [temporaryRegistration] Temporary registration
  final PersonalDocument temporaryRegistration;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementTemporaryRegistration.fromJson(Map<String, dynamic> json) => PassportElementTemporaryRegistration(
    temporaryRegistration: PersonalDocument.fromJson(json['temporary_registration']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "temporary_registration": temporaryRegistration.toJson(),
    };
  }
  
  @override
  PassportElementTemporaryRegistration copyWith({
    PersonalDocument? temporaryRegistration,
    dynamic extra,
    int? clientId,
  }) => PassportElementTemporaryRegistration(
    temporaryRegistration: temporaryRegistration ?? this.temporaryRegistration,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportElementTemporaryRegistration';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementPhoneNumber extends PassportElement {

  /// A Telegram Passport element containing the user's phone number
  const PassportElementPhoneNumber({
    required this.phoneNumber,
    this.extra,
    this.clientId,
  });
  
  /// [phoneNumber] Phone number
  final String phoneNumber;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementPhoneNumber.fromJson(Map<String, dynamic> json) => PassportElementPhoneNumber(
    phoneNumber: json['phone_number'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": phoneNumber,
    };
  }
  
  @override
  PassportElementPhoneNumber copyWith({
    String? phoneNumber,
    dynamic extra,
    int? clientId,
  }) => PassportElementPhoneNumber(
    phoneNumber: phoneNumber ?? this.phoneNumber,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportElementPhoneNumber';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementEmailAddress extends PassportElement {

  /// A Telegram Passport element containing the user's email address
  const PassportElementEmailAddress({
    required this.emailAddress,
    this.extra,
    this.clientId,
  });
  
  /// [emailAddress] Email address
  final String emailAddress;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementEmailAddress.fromJson(Map<String, dynamic> json) => PassportElementEmailAddress(
    emailAddress: json['email_address'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "email_address": emailAddress,
    };
  }
  
  @override
  PassportElementEmailAddress copyWith({
    String? emailAddress,
    dynamic extra,
    int? clientId,
  }) => PassportElementEmailAddress(
    emailAddress: emailAddress ?? this.emailAddress,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const CONSTRUCTOR = 'passportElementEmailAddress';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
