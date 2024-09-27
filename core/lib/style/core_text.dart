import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:core/style/core_color_style.dart';
import 'package:core/style/core_typography.dart';

class CoreText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final CoreTypography typography;
  final double? letterSpacing;
  final double? wordSpacing;
  final TextBaseline? textBaseline;
  final double? height;
  final Locale? locale;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final TextDecorationStyle? decorationStyle;
  final TextAlign? textAlign;

  const CoreText(this.text,
      {super.key,
      this.fontSize,
      this.fontWeight,
      this.letterSpacing,
      this.wordSpacing,
      this.textBaseline,
      this.height,
      this.locale,
      this.decoration,
      this.decorationColor,
      this.decorationStyle,
      this.typography = CoreTypography.bodyMedium,
      this.color,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        style: CoreTextStyle().getStyle(
          color: color,
          fontSize: fontSize ?? typography.fontSize,
          fontWeight: fontWeight ?? typography.fontWeight,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          textBaseline: textBaseline,
          height: height,
          locale: locale,
          decoration: decoration,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
        ));
  }
}

class CoreTextStyle {
  TextStyle getStyle({
    Color? color = CoreColors.textColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    CoreTypography typography = CoreTypography.bodyMedium,
    double? height,
    Locale? locale,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) =>
      GoogleFonts.getFont(
        "Inter",
        color: color,
        fontSize: fontSize ?? typography.fontSize,
        fontWeight: fontWeight ?? typography.fontWeight,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        height: height,
        locale: locale,
        decoration: decoration ?? TextDecoration.none,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: 0,
      );
}
