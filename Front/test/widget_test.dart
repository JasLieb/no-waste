// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:nowaste/main.dart';
import 'package:nowaste/src/models/contact.dart';

void main() {
  testWidgets('favourite smoke test', (WidgetTester tester) async {
    // Will fails
    await tester.pumpWidget(App());

    // Verify that our counter starts at 0.
    expect(find.text('toto'), findsOneWidget);
    

    // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.widgetWithIcon(Contact, Icons.favorite_border));
    // await tester.pump();

    // expect(find.byIcon(IconData(Icons.favorite.codePoint)), findsOneWidget);
  });
}
