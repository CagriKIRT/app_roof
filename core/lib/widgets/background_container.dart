import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  final String? backgroundImage;
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const BackgroundContainer({
    super.key,
    required this.child,
    this.backgroundImage,
    this.color,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: padding ?? EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          image: backgroundImage != null
              ? DecorationImage(
                  image: AssetImage(backgroundImage!),
                  fit: BoxFit.cover,
                )
              : null,
        ),
        child: child,
      ),
    );
  }
}
