import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/route_manager.dart';
import 'package:troisplay/screens/home_base.dart';
import 'package:troisplay/theme/dark.dart';

void main() {
  group('User Panel Test', () {
    testWidgets(
        'The Given user display panel should have username of Daniel Amos...',
        (WidgetTester tester) async {
      await tester
          .pumpWidget(GetMaterialApp(theme: darkTheme, home: HomeScreen()));
      expect(
          (tester.firstWidget(find.byKey(const ValueKey<String>('username')))
                  as Text)
              .data,
          'Francis');
    });
    testWidgets('The Given user display panel should have balance ₦399,650...',
        (WidgetTester tester) async {
      await tester
          .pumpWidget(GetMaterialApp(theme: darkTheme, home: HomeScreen()));
      expect(
          (tester.firstWidget(find.byKey(const ValueKey<String>('balance')))
                  as Text)
              .data,
          '₦399,650.00');
    });
  });
}
