# UIBadge

Creates a badge style widget for the display of numbers. The widget will size itself accordingly to display inside a circle with the formatted number.

## Install

```yaml
dev_dependencies:
  ui_badge:
    git: https://github.com/GitHubStuff/ui_badge_flutter.git
```

## Usage

```dart
import 'import package:ui_badge/ui_badge.dart';
  :
  :
  :
UIBadge(
  value: 9,
  color: Colors.purple,
  border: Colors.green,
  textColor: Colors.white,
);
```

## Example

```dart
UIBadge(
        value: 9,        // Value to display
        color: Colors.purple,             // Circle Color
        border: Colors.green,             // Border Color
        textColor: Colors.white,          // Text Color
        ),
```

**NOTE** the ```/example``` app has usage/example

## Features

A simple badge icon that has a formatted number and custom background, border, and text colors.

Features a callback that reports the width of the resulting widget.

## Getting started

```dart
UIBadge(
        value: 9,        // Value to display
        color: Colors.purple,             // Circle Color
        border: Colors.green,             // Border Color
        textColor: Colors.white,          // Text Color
        ),
```

## Example App

For examples go to `/example` folder.

## Additional information

Widget declaration:

```dart
class UIBadge extends StatelessWidget {
  late final double circleDiameter;
  final double borderPadding = 14.0;
  final num value;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final double borderWidth;

  // ignore: prefer_const_constructors_in_immutables
  UIBadge({
    super.key,
    required this.value,
    this.backgroundColor = const Color(0xffff0800),
    this.borderColor = Colors.transparent,
    this.textColor = Colors.white,
    this.borderWidth = 2.0,
  });
```

## Finally

Be kind to each other!
