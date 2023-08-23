# Gradient Circular Progress Indicator

A customizable circular progress widget for Flutter, designed to display progress using a gradient arc with an optional background color.


# Usage
### Import the `package`:

import 'package:gradient_circular_progress_indicator/gradient_circular_progress_indicator.dart';

### Use the GradientCircularProgressIndicator widget in your `Flutter app`:

```dart
GradientCircularProgressIndicator(
  progress: 0.75, // Specify the progress value between 0 and 1
  gradient: LinearGradient(
    colors: [Colors.blue, Colors.green],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  backgroundColor: Colors.grey, // Specify the background color
  child: Text('75%'), // Optional child widget
)
```


# Parameters
- progress: A double value between 0 and 1 representing the progress.
- gradient: A gradient used to color the progress arc.
- backgroundColor: The background color behind the unfilled portion.
- child: An optional child widget to place on top of the progress.
- size: size of the widget
- stroke: stroke width

# output
[output1][assets/output1.jpg]

# Issues and Contributions
Found a bug or have a feature request? Open an issue. Contributions are welcome!

# License
This project is licensed under the MIT License - see the LICENSE file for details.

## Installation

Add this line to your `pubspec.yaml` file:

```yaml
dependencies:
  gradient_cicular_progress_indicator: ^0.0.4
```

Then run
```cmd
flutter pub get
```

# Author
Dilip Yadav
Connect with me on [LinkedIn](https://www.linkedin.com/in/mryadavdilip).