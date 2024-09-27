import 'package:flutter/widgets.dart';

extension StateExtension on State {
  dynamicHeight(double ratio) => MediaQuery.of(context).size.height * ratio;

  dynamicWidth(double ratio) => MediaQuery.of(context).size.width * ratio;
}