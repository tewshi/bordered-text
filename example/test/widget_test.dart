// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bordered_text_example/main.dart' show MyApp;


void main() {
  testWidgets('BorderedText has a stroke that matches the text',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    final textFinder = find.text('M');
    final stroke = textFinder.first;

    expect(stroke, findsOneWidget);
  });

  testWidgets('BorderedText 2 texts in a stack', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    final textFinder = find.text('M');
    final stroke = textFinder.first;

    final stackParent =
        find.descendant(of: find.byType(Stack), matching: stroke);
    final stackChildren =
        find.ancestor(of: stroke, matching: find.byType(Stack));

    expect(stackParent, findsOneWidget);
    expect(stackChildren, findsNWidgets(2));
  });

  testWidgets('BorderedText has two text elements',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    final textFinder = find.text('M');

    expect(textFinder, findsNWidgets(2));
  });
}
