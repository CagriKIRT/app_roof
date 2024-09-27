import 'dart:ui';

enum CoreTypography {
  displayLarge(fontSize: 57, fontWeight: FontWeight.w400),
  displayMedium(fontSize: 45, fontWeight: FontWeight.w400),
  displaySmall(fontSize: 36, fontWeight: FontWeight.w400),

  headlineLarge(fontSize: 32, fontWeight: FontWeight.w400),
  headlineMedium(fontSize: 28, fontWeight: FontWeight.w400),
  headlineSmall(fontSize: 24, fontWeight: FontWeight.w400),

  titleLarge(fontSize: 22, fontWeight: FontWeight.w400),
  titleMedium(fontSize: 16, fontWeight: FontWeight.w500),
  titleSmall(fontSize: 14, fontWeight: FontWeight.w500),

  bodyLarge(fontSize: 16, fontWeight: FontWeight.w500),
  bodyMedium(fontSize: 14, fontWeight: FontWeight.w400),
  bodySmall(fontSize: 12, fontWeight: FontWeight.w400),

  labelLarge(fontSize: 14, fontWeight: FontWeight.w400),
  labelMedium(fontSize: 12, fontWeight: FontWeight.w500),
  labelSmall(fontSize: 11, fontWeight: FontWeight.w500);

  final FontWeight fontWeight;
  final double fontSize;

  const CoreTypography({
    required this.fontWeight,
    required this.fontSize,
  });
}
