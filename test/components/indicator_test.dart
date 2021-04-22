import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:troisplay/components/indicator.dart';

void main() {
  testWidgets('Given when indicator is isActive props is false...',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Indicator(),
        ),
      ),
    ));
    expect((tester.firstWidget(find.byType(Indicator)) as Indicator).isActive,
        false);
  });
  testWidgets('Given when indicator is isActive props is true...',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Indicator(
            isActive: true,
          ),
        ),
      ),
    ));
    expect((tester.firstWidget(find.byType(Indicator)) as Indicator).isActive,
        true);
  });
}
