extension StringExtension on String {
  String capitalize() {
    if (length < 2) {
      return "";
    }
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension NullableStringExtension on String? {
  bool get isNull => this == null;

  String get orEmpty => this == null ? "" : this!;
}
