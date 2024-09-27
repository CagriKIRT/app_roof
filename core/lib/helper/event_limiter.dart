import 'dart:async';

import 'package:flutter/material.dart';

class CoreEventLimiter {
  final Duration duration;
  Timer? _timer;

  CoreEventLimiter({
    this.duration = const Duration(milliseconds: 300),
  });

  run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(duration, action);
  }
}
