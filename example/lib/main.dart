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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BorderedText(
                strokeWidth: 4.0,
                strokeColor: Colors.red,
                child: Text(
                  message,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21.0,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              BorderedText(
                strokeWidth: 4.0,
                strokeColor: Colors.green,
                child: Text(
                  'Bold Text',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              BorderedText(
                strokeWidth: 4.0,
                strokeColor: Colors.blue,
                child: Text(
                  'Bold Italicised Text',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
