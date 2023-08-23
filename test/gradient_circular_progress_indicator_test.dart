import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:gradient_circular_progress_indicator/gradient_circular_progress_indicator.dart';

void main() {
  test(
      'check widget',
      () => const GradientCircularProgressIndicator(
          progress: 0.3,
          gradient: LinearGradient(
            colors: [
              Colors.green,
              Colors.blue,
            ],
            stops: [0, 1],
          )));
}
