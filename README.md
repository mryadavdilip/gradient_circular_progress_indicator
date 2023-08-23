# Custom Circular Progress Widget

A customizable circular progress widget for Flutter, designed to display progress using a gradient arc with an optional background color.

## Installation

Add this line to your `pubspec.yaml` file:

```yaml
dependencies:
  custom_circular_progress: ^1.0.0


Then run flutter pub get.

Usage
Import the package:

import 'package:custom_circular_progress/custom_circular_progress.dart';

Use the CustomCircularProgress widget in your Flutter app:

CustomCircularProgress(
  progress: 0.75, // Specify the progress value between 0 and 1
  gradient: LinearGradient(
    colors: [Colors.blue, Colors.green],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  backgroundColor: Colors.grey, // Specify the background color
  child: Text('75%'), // Optional child widget
)


Parameters
progress: A double value between 0 and 1 representing the progress.
gradient: A gradient used to color the progress arc.
backgroundColor: The background color behind the unfilled portion.
child: An optional child widget to place on top of the progress.


License
This project is licensed under the MIT License - see the LICENSE file for details.

Author
Dilip Yadav
Connect with me on LinkedIn - https://www.linkedin.com/in/mryadavdilip.