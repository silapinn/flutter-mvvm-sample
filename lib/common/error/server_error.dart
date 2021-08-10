class ServerError extends Error {
  final int? code;
  final String message;
  final String details;

  ServerError(this.code, this.message, this.details);
}
