import 'package:flutter/material.dart';

class CoreElevatedButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColor;
  final bool disabled;

  const CoreElevatedButton({
    super.key,
    this.width,
    this.height,
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.borderRadius,
    this.backgroundColor,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.zero,
          ),
        ),
        onPressed: disabled ? null : onPressed,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
