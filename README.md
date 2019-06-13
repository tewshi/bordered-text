# BorderedText

Adds Stroke to a Flutter Text widget

[![Build Status](https://travis-ci.org/tewshi/bordered-text.svg?branch=master)](https://travis-ci.org/tewshi/bordered-text)

A package provides an easy way to add shimmer effect in Flutter project


## Getting Started

### We can apply a very thin and subtle stroke to a [Text]

```dart
import 'package:bordered_text/bordered_text.dart';
```

```dart
BorderedText(
  strokeWidth: 1.0,
  text: Text(
    'Bordered Text',
    style: TextStyle(
      decoration: TextDecoration.none,
      decorationStyle: TextDecorationStyle.wavy,
      decorationColor: Colors.red,
    ),
  ),
)
```
