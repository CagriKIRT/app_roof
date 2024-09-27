import 'package:flutter/material.dart';

enum CoreScreenType {
  mobile(maxWidth: 600),
  tablet(maxWidth: 840),

  ///also tablet or phone in landscape mode
  desktop(maxWidth: 1200);

  final double maxWidth;

  const CoreScreenType({required this.maxWidth});
}

class CoreScreenBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  const CoreScreenBuilder(
      {super.key, required this.mobile, this.tablet, this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < CoreScreenType.mobile.maxWidth) {
          return mobile;
        } else if (constraints.maxWidth < CoreScreenType.tablet.maxWidth) {
          return tablet ?? mobile;
        } else {
          return desktop ?? tablet ?? mobile;
        }
      },
    );
  }
}
