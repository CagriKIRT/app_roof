import 'package:flutter/material.dart';

class CoreDivider extends StatelessWidget {
  final Color? color;
  final double? thickness;
  final double? indent;
  final double? endIndent;
  final double? height;

  const CoreDivider(
      {super.key,
      this.color,
      this.thickness = 1,
      this.indent,
      this.endIndent,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      indent: indent,
      endIndent: endIndent,
      color: color ?? Colors.black.withOpacity(0.2),
      thickness: thickness,
    );
  }
}
