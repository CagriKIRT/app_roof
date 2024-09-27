import 'package:core/model/result/result_error.dart';
import 'package:core/model/result/result_type.dart';

class Result<T> {
  final T? data;
  final IResultError? error;
  final ResultType resultType;

  Result._({
    this.data,
    this.error,
    required this.resultType,
  });

  Result.success({
    required this.data,
  })  : resultType = ResultType.success,
        error = null;

  Result.error({
    required this.error,
  })  : resultType = ResultType.error,
        data = null;

  Result.loading()
      : resultType = ResultType.loading,
        data = null,
        error = null;

  Result.empty()
      : resultType = ResultType.empty,
        data = null,
        error = null;

  bool get isSuccess => resultType == ResultType.success;

  bool get isError => resultType == ResultType.error;

  bool get isLoading => resultType == ResultType.loading;

  bool get isEmpty => resultType == ResultType.empty;
}
