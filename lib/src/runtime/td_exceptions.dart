import '../tdapi/tdapi.dart';

/// TDLib answered a request with an error.
final class TdException implements Exception {
  /// Creates the exception for [error] returned by [request].
  const TdException(this.error, this.request);

  /// The TDLib error.
  final TdError error;

  /// The request that failed.
  final TdFunction request;

  /// TDLib error code (e.g. 400, 401, 429).
  int get code => error.code;

  /// TDLib error message (e.g. `PHONE_NUMBER_INVALID`).
  String get message => error.message;

  @override
  String toString() =>
      'TdException(${request.getConstructor()}): ${error.code} ${error.message}';
}

/// TDLib answered with an object of a type the request doesn't return.
final class TdUnexpectedResponseException implements Exception {
  /// Creates the exception.
  const TdUnexpectedResponseException(this.response, this.request);

  /// What TDLib returned.
  final TdObject response;

  /// The request.
  final TdFunction request;

  @override
  String toString() =>
      'TdUnexpectedResponseException(${request.getConstructor()}): '
      'got ${response.getConstructor()}';
}

/// The client was closed before the request completed.
final class TdClientClosedException implements Exception {
  /// Creates the exception for client [clientId] (0 = the whole runtime).
  const TdClientClosedException(this.clientId);

  /// The closed client.
  final int clientId;

  @override
  String toString() => 'TdClientClosedException(client $clientId)';
}

/// The receive isolate stopped; pending requests were failed. Call
/// `TdRuntime.ensureReceiving()` (e.g. on app resume) to restart it.
final class TdReceiverException implements Exception {
  /// Creates the exception.
  const TdReceiverException(this.message);

  /// What went wrong.
  final String message;

  @override
  String toString() => 'TdReceiverException: $message';
}

/// TDLib sent something that isn't a JSON object.
final class TdDecodeException implements Exception {
  /// Creates the exception.
  const TdDecodeException(this.raw);

  /// The raw text TDLib sent.
  final String raw;

  @override
  String toString() => 'TdDecodeException: $raw';
}

/// The bundled TDLib isn't the version this package's API was generated for.
final class TdVersionMismatchException implements Exception {
  /// Creates the exception.
  const TdVersionMismatchException({
    required this.nativeVersion,
    required this.nativeCommit,
  });

  /// TDLib version reported by the native library.
  final String nativeVersion;

  /// TDLib commit reported by the native library.
  final String nativeCommit;

  @override
  String toString() =>
      'TdVersionMismatchException: native TDLib '
      '$nativeVersion ($nativeCommit), but this API was generated for '
      '$tdlibVersion ($tdlibSchemaCommit). Use the binaries from '
      'hook/tdjson_sources.json, or start with checkVersion: false if you '
      'know the schemas match.';
}
