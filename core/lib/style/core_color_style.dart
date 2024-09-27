import 'package:flutter/material.dart';

class CoreColors {
  static const Color paleBlue = Color(0xffA7C2FF);
  static const Color paleBlue1 = Color(0xffA7C2FF);
  static const Color palePink = Color(0xffF45E7D);
  static const Color mainScreenBackground = Color(0xffF1F0F7);

  static const red = Color(0xffff3a30);
  static const nileBlue = Color(0xff193663);
  static const frenchBlue = Color(0xff0077C0);
  static const sunshade = Color(0xffc06300);
  static const vividCerise = Color(0xffD6186F);
  static const daisyBush = Color(0xff522E91);
  static const pumpkinOrange = Color(0xffF47920);
  static const shamrockGreen = Color(0xff009A61);
  static const blue = Color(0xff007aff);
  static const green = Color(0xff4cd964);
  static const tealBlue = Color(0xff5ac8fa);
  static const yellow = Color(0xffffcc00);
  static const orange = Color(0xffff9500);
  static const purple = Color(0xff5856d6);

  static const Color errorColor = Color(0xffff3a30);
  static const Color successColor = Color(0xff009A61);
  static const Color textColor = Color(0xff434343);

  static Color getColorsByIndex(int index) {
    while (index >= _colorList.length) {
      index = index - _colorList.length;
    }
    return _colorList[index];
  }

  static List<Color> _colorList = [
    blue,
    Colors.amber,
    green,
    Colors.deepPurple,
    yellow,
    red,
    Colors.purple,
    tealBlue,
    orange,
    purple,
    Colors.lightGreen,
    Colors.tealAccent,
    Colors.pinkAccent,
    Colors.lightBlueAccent,
    Colors.green,
    Colors.lime,
    Colors.lightBlue,
    Colors.deepOrange,
    Colors.indigo,
    Colors.cyanAccent,
    Colors.redAccent,
    Colors.yellowAccent,
  ];
}
