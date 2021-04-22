import 'package:flutter_test/flutter_test.dart';
import 'package:troisplay/logic/convert.dart';

void main() {
  test('convert 10 to ₦10.00 ...', () async {
    final String converted = toMoney(10);
    expect(converted, '₦10.00');
  });
  test('convert 1000 to ₦1,000.00 ...', () async {
    final String converted = toMoney(1000);
    expect(converted, '₦1,000.00');
  });
  test('convert ₦1,000.00 to 1000 ...', () async {
    final int converted = fromMoneytoInt('₦1,000.00');
    expect(converted, 1000);
  });
}
