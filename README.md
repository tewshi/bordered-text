# BorderedText

Adds Stroke to a Flutter Text widget

## Getting Started

### We can apply a very thin and subtle stroke to a [Text]

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
