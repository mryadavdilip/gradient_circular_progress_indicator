## Examples
Here's an example of how you can use the `GradientCircularProgressIndicator` widget

```dart
import 'package:flutter/material.dart';
import 'package:gradient_circular_progress_indicator/gradient_circular_progress_indicator.dart';

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
          child: GradientCircularProgressIndicator(
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
```