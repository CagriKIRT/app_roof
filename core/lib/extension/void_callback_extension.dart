import 'package:flutter/material.dart';
import 'package:core/helper/event_limiter.dart';

extension VoidCallbackExtension on VoidCallback {
  void limitTab() {
    CoreEventLimiter().run(this);
  }
}
