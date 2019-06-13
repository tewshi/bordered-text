# BorderedText

[![Build Status](https://travis-ci.org/tewshi/bordered-text.svg?branch=master)](https://travis-ci.org/tewshi/bordered-text)

Adds Stroke to a Flutter Text widget

<p>
  <img src="https://github.com/tewshi/bordered-text/blob/master/screenshots/sample.png?raw=true"/>
</p>

## Getting Started

### We can apply a very thin and subtle stroke to a [Text]

```dart
import 'package:bordered_text/bordered_text.dart';

class StrokeTester extends StatelessWidget {

  const StrokeTester({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bordered Text test',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bordered Text'),
        ),
        body: Center(
          child: BorderedText(
            strokeWidth: 1.0,
            text: Text(
              'Bordered Text Widget',
              style: TextStyle(
                decoration: TextDecoration.none,
                decorationColor: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```
