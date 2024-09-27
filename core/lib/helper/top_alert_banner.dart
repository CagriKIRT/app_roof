import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:core/extension/context_extension.dart';
import 'package:core/style/core_color_style.dart';

enum AlertType { success, error }

class TopAlertBanner {
  final BuildContext context;

  TopAlertBanner({required this.context});

  OverlayEntry _alertEntry(AlertType alertType, String message) =>
      OverlayEntry(builder: (BuildContext context) {
        return Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: context.widthRatio(0.9),
            margin: const EdgeInsets.symmetric(vertical: 50),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            decoration: BoxDecoration(
              color: alertType == AlertType.success
                  ? CoreColors.successColor
                  : CoreColors.errorColor,
              borderRadius: BorderRadius.circular(70),
            ),
            child: DefaultTextStyle(
              style: TextStyle(
                color: Colors.white,
              ),
              child: Text(
                message,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      });

  Future<void> showAlert(AlertType alertType, String message,
      {Duration? duration}) async {
    var overlay = Overlay.of(context);
    var entry = _alertEntry(alertType, message);
    overlay.insert(entry);
    await Future.delayed(duration ?? Duration(seconds: 2)).whenComplete(() {
      Logger().i(message);
      entry.remove();
    });
  }

  Future<void> showError({
    String? displayedMessage,
    String? logMessage,
    Duration? duration,
  }) async {
    var _message = displayedMessage ?? "An error occurred";
    Logger().w(logMessage ?? _message);
    await showAlert(AlertType.error, _message, duration: duration);
  }

  Future<void> showSuccess({String? message, Duration? duration}) async {
    final _message = message ?? "Success";
    Logger().i(_message);
    await showAlert(AlertType.success, _message, duration: duration);
  }
}
