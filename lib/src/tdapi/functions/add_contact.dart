part of '../tdapi.dart';

class AddContact extends TdFunction {

  /// Adds a user to the contact list or edits an existing contact by their user identifier
  const AddContact({
    required this.contact,
    required this.sharePhoneNumber,
  });
  
  /// [contact] The contact to add or edit; phone number can be empty and needs to be specified only if known, vCard is ignored
  final Contact contact;

  /// [sharePhoneNumber] True, if the new contact needs to be allowed to see current user's phone number. A corresponding rule to userPrivacySettingShowPhoneNumber will be added if needed. Use the field userFullInfo.need_phone_number_privacy_exception to check whether the current user needs to be asked to share their phone number
  final bool sharePhoneNumber;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "contact": contact.toJson(),
      "share_phone_number": sharePhoneNumber,
      "@extra": extra,
    };
  }
  
  AddContact copyWith({
    Contact? contact,
    bool? sharePhoneNumber,
  }) => AddContact(
    contact: contact ?? this.contact,
    sharePhoneNumber: sharePhoneNumber ?? this.sharePhoneNumber,
  );

  static const CONSTRUCTOR = 'addContact';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
