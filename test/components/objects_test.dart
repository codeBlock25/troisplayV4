import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:troisplay/components/objects.dart';
import 'package:troisplay/data/shape.dart';

void main() {
  testWidgets('Given when is bottom is true position picked is bottom',
      (WidgetTester tester) async {
    // final Finder circleWidget = find.byType(CircleWiget);
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <CircleWiget>[
            CircleWiget(
              // ignore: always_specify_types
              key: const ValueKey('first circle key'),
              top: -(Get.width / 2) / 2.5,
              left: -(Get.width / 2) / 3,
              size: ObjectSize(height: Get.width / 2, width: Get.width / 2),
            ),
          ],
        ),
      ),
    ));
    // ignore: always_specify_types
    expect(find.byKey(const ValueKey('first circle key')), findsWidgets);
  });
}
