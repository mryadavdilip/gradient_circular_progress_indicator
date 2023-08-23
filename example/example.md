## Examples

Here's an example of how you can use the `GradientCircularProgressIndicator` widget

import 'package:flutter/material.dart';
import 'package:custom_circular_progress/custom_circular_progress.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circular Progress Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Circular Progress Example'),
        ),
        body: Center(
          child: CustomCircularProgress(
            progress: 0.6,
            gradient: RadialGradient(
              colors: [Colors.blue, Colors.purple],
            ),
            backgroundColor: Colors.grey,
            child: Text('60%'),
          ),
        ),
      ),
    );
  }
}