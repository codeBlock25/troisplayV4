import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Indicator extends StatelessWidget {
  const Indicator({Key key, this.isActive = false}) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      width: Get.width / 9,
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
      height: 5,
      color: !isActive ? const Color(0xFF464646) : const Color(0xFF0042EC),
    );
  }
}
