import 'package:flutter/animation.dart';

class CoreSizeTransitionHelper {
  static AnimationController createController(
      {required TickerProvider vsync,
      Duration duration = const Duration(seconds: 1)}) {
    return AnimationController(
      vsync: vsync,
      duration: duration,
    );
  }

  static Animation<double> createAnimation(
      {required AnimationController controller, double? begin, double? end}) {
    return Tween<double>(begin: begin, end: end).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.fastOutSlowIn,
      ),
    );
  }
}
