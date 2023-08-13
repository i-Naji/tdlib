part of '../tdapi.dart';

class SearchUserByPhoneNumber extends TdFunction {
  /// Searches a user by their phone number. Returns a 404 error if the user can't be found
  const SearchUserByPhoneNumber({
    required this.phoneNumber,
  });

  /// [phoneNumber] Phone number to search for
  final String phoneNumber;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "phone_number": phoneNumber,
      "@extra": extra,
    };
  }

  SearchUserByPhoneNumber copyWith({
    String? phoneNumber,
  }) =>
      SearchUserByPhoneNumber(
        phoneNumber: phoneNumber ?? this.phoneNumber,
      );

  static const CONSTRUCTOR = 'searchUserByPhoneNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}
