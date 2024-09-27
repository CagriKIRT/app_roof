import 'package:flutter/cupertino.dart';
import 'package:core/helper/top_alert_banner.dart';

extension BuildContextExtension on BuildContext {
  unFocus() {
    FocusScope.of(this).unfocus();
  }

  Future<void> showError(
      {String? displayedMessage,
      String? logMessage,
      Duration? duration}) async {
    await TopAlertBanner(context: this).showError(
        displayedMessage: displayedMessage,
        logMessage: logMessage,
        duration: duration);
  }

  Future<void> showSuccess({String? message, Duration? duration}) async {
    await TopAlertBanner(context: this)
        .showSuccess(message: message, duration: duration);
  }

  double heightRatio(double ratio) {
    return MediaQuery.of(this).size.height * ratio;
  }

  double widthRatio(double ratio) {
    return MediaQuery.of(this).size.width * ratio;
  }
}
