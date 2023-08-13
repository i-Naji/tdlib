part of '../tdapi.dart';

class SearchUserByToken extends TdFunction {
  /// Searches a user by a token from the user's link
  const SearchUserByToken({
    required this.token,
  });

  /// [token] Token to search for
  final String token;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "token": token,
      "@extra": extra,
    };
  }

  SearchUserByToken copyWith({
    String? token,
  }) =>
      SearchUserByToken(
        token: token ?? this.token,
      );

  static const CONSTRUCTOR = 'searchUserByToken';

  @override
  String getConstructor() => CONSTRUCTOR;
}
