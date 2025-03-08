

class ServerException implements Exception {
  final String message;

  const ServerException({required this.message});
}

class DatabaseException implements Exception {}

class JsonException implements Exception {
  final String message;

  const JsonException(this.message);

  @override
  String toString() {
    return message;
  }
}

class TokenExpiredException implements Exception {
  final String message;

  const TokenExpiredException(this.message);

  @override
  String toString() {
    return message;
  }
}