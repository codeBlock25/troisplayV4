import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({
    Key key,
    @required this.padding,
    @required this.mainText,
    @required this.smallText,
    @required this.position,
  }) : super(key: key);

  final EdgeInsets padding;
  final String mainText;
  final String smallText;
  final int position;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      padding: EdgeInsets.symmetric(
          horizontal: Get.width / 20, vertical: padding.bottom + 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Image.asset(
            'assets/images/onboarding$position.png',
            fit: BoxFit.contain,
            height: Get.width / 1.6,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            mainText,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            smallText,
            style: const TextStyle(
                color: Color(0xFFC9C9C9),
                fontWeight: FontWeight.normal,
                fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
