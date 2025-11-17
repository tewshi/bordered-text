import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('BorderedText has a stroke that matches the text',
      (WidgetTester tester) async {
    await tester.pumpWidget(StrokeTester(title: 'T', message: 'M'));

    final textFinder = find.text('M');
    final stroke = textFinder.first;

    expect(stroke, findsOneWidget);
  });

  testWidgets('BorderedText has two text elements',
      (WidgetTester tester) async {
    await tester.pumpWidget(StrokeTester(title: 'T', message: 'M'));

    final textFinder = find.text('M');

    expect(textFinder, findsNWidgets(2));
  });
}

class StrokeTester extends StatelessWidget {
  final String title;
  final String message;

  const StrokeTester({
    super.key,
    required this.title,
    required this.message,
  });

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
