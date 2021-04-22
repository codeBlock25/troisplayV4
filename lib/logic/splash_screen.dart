import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:troisplay/screens/welcome/onboarding.dart';

Future<void> load() async {
  Future<void>.delayed(
      const Duration(seconds: 2),
      () => <void>{
            Get.offAll(() => OnboardingScreen(),
                transition: Transition.rightToLeft,
                curve: Curves.elasticIn,
                duration: const Duration(milliseconds: 400))
          });
  return;
}
