import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:troisplay/data/shape.dart';

class CircleWiget extends StatelessWidget {
  const CircleWiget({
    Key key,
    this.top = 0.0,
    this.left = 0.0,
    this.right = 0.0,
    this.bottom = 0.0,
    this.isBottom = false,
    this.isRight = false,
    @required this.size,
  }) : super(key: key);

  final double top;
  final double left;
  final double right;
  final double bottom;
  final bool isBottom;
  final bool isRight;
  final ObjectSize size;
  @override
  Widget build(BuildContext context) {
    if (isBottom && isRight) {
      return Positioned(
          bottom: bottom,
          right: right,
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Get.width / 2),
                color: const Color(0xFF0D0D0D)),
          ));
    } else if (isBottom) {
      return Positioned(
          bottom: bottom,
          left: left,
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Get.width / 2),
                color: const Color(0xFF0D0D0D)),
          ));
    } else if (isRight) {
      return Positioned(
          top: top,
          right: right,
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Get.width / 2),
                color: const Color(0xFF0D0D0D)),
          ));
    } else {
      return Positioned(
        top: top,
        left: left,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Get.width / 2),
              color: const Color(0xFF0D0D0D)),
        ),
      );
    }
  }
}
