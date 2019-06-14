import 'package:flutter/material.dart';
import 'package:bordered_text/bordered_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final String title = 'T';
  final String message = 'M';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bordered Text test',
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: BorderedText(child: Text(message)),
        ),
      ),
    );
  }
}
