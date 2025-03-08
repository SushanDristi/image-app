
import 'dart:async';
import 'package:flutter/material.dart';

class DeBouncer {
  Timer? _debounce;
  Duration duration;

  DeBouncer(this.duration);

  void run(VoidCallback callbackAfterTimeLapsed,
      VoidCallback callbackBeforeTimeLapsed) {
    if (_debounce?.isActive ?? false) {
      callbackBeforeTimeLapsed();
      _debounce?.cancel();
    }
    _debounce = Timer(duration, callbackAfterTimeLapsed);
  }

  void dispose() {
    _debounce?.cancel();
  }
}
