enum ScreenState {
  initial,
  loading,
  success,
  empty,
  error;

  bool get isLoading => this == ScreenState.loading;

  bool get isSuccess => this == ScreenState.success;

  bool get isEmpty => this == ScreenState.empty;

  bool get isError => this == ScreenState.error;

  bool get isInitial => this == ScreenState.initial;
}
