abstract class IResultError {
  final String message;
  final int errorCode;

  IResultError({
    required this.message,
    required this.errorCode,
  });
}

class ResultError extends IResultError {
  ResultError({
    required super.message,
    required super.errorCode,
  });
}
