part of '../tdapi.dart';

class AddContact extends TdFunction {
  /// Adds a user to the contact list or edits an existing contact by their user identifier
  AddContact({this.contact, this.sharePhoneNumber});

  /// [contact] The contact to add or edit; phone number can be empty and needs to be specified only if known, vCard is ignored
  Contact contact;

  /// [sharePhoneNumber] True, if the new contact needs to be allowed to see current user's phone number. A corresponding rule to userPrivacySettingShowPhoneNumber will be added if needed. Use the field UserFullInfo.need_phone_number_privacy_exception to check whether the current user needs to be asked to share their phone number
  bool sharePhoneNumber;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  AddContact.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "contact": this.contact == null ? null : this.contact.toJson(),
      "share_phone_number": this.sharePhoneNumber,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addContact';

  @override
  String getConstructor() => CONSTRUCTOR;
}
