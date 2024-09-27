import 'package:flutter/material.dart';
import 'package:core/model/screen_state.dart';
import 'package:core/style/core_text.dart';

class ScreenStateHandler extends StatelessWidget {
  final ScreenState screenState;
  final Widget? onLoading;
  final Widget onSuccess;
  final Widget? onError;

  const ScreenStateHandler(
      {super.key,
      required this.screenState,
      this.onLoading,
      required this.onSuccess,
      this.onError});

  @override
  Widget build(BuildContext context) {
    return screen;
  }

  Widget get screen {
    if (screenState.isLoading) {
      return onLoading ?? const Center(child: CircularProgressIndicator());
    } else if (screenState.isSuccess) {
      return onSuccess;
    } else {
      return onError ?? const Center(child: CoreText("An error occurred"));
    }
  }
}
