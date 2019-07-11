part of '../tdapi.dart';

class LinkState implements TLObject {
  /// Represents the relationship between user A and user B. For incoming_link, user A is the current user; for outgoing_link, user B is the current user
  LinkState();

  /// a LinkState return type can be :
  /// * LinkStateNone
  /// * LinkStateKnowsPhoneNumber
  /// * LinkStateIsContact
  factory LinkState.fromJson(Map<String, dynamic> json) {
    switch (json['@type']) {
      case LinkStateNone.CONSTRUCTOR:
        return LinkStateNone.fromJson(json);
      case LinkStateKnowsPhoneNumber.CONSTRUCTOR:
        return LinkStateKnowsPhoneNumber.fromJson(json);
      case LinkStateIsContact.CONSTRUCTOR:
        return LinkStateIsContact.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const String CONSTRUCTOR = "linkState";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LinkStateNone implements LinkState {
  /// The phone number of user A is not known to user B.
  ///
  LinkStateNone();

  /// Parse from a json
  LinkStateNone.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "linkStateNone";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LinkStateKnowsPhoneNumber implements LinkState {
  /// The phone number of user A is known but that number has not been saved to the contact list of user B.
  ///
  LinkStateKnowsPhoneNumber();

  /// Parse from a json
  LinkStateKnowsPhoneNumber.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "linkStateKnowsPhoneNumber";

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LinkStateIsContact implements LinkState {
  /// The phone number of user A has been saved to the contact list of user B.
  ///
  LinkStateIsContact();

  /// Parse from a json
  LinkStateIsContact.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR};
  }

  static const String CONSTRUCTOR = "linkStateIsContact";

  @override
  String getConstructor() => CONSTRUCTOR;
}
