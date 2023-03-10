// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isweb_test/isweb_test.dart';
import 'package:isweb_test_sample/main.dart';

void main() {
  testWidgets('isWeb false', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    Finder finder = find.byType(Slider);
    expect(finder, findsOneWidget);
    Slider slider = finder.evaluate().first.widget as Slider;
    expect(slider.inactiveColor, null);
  });
  testWidgets('debugIsWeb true', (WidgetTester tester) async {
    debugIsWeb = true;
    await tester.pumpWidget(const MyApp());

    Finder finder = find.byType(Slider);
    expect(finder, findsOneWidget);
    Slider slider = finder.evaluate().first.widget as Slider;
    expect(slider.inactiveColor, Colors.orange);
  });
}
