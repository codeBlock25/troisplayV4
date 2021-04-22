import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:troisplay/screens/help_screen/notification.dart';

AppBar buildAppBarWithLogo() {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        Get.back();
      },
      icon: const Icon(
        Ionicons.chevron_back_outline,
        color: Colors.white,
      ),
    ),
    title: SizedBox(
        width: Get.width / 3.2,
        child: Image.asset(
          'assets/brand/logo_plain.png',
          key: const ValueKey<String>('logo'),
          fit: BoxFit.contain,
        )),
  );
}

AppBar buildGameAppBarWithLogo() {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        Get.defaultDialog(
          title: 'Action Required!',
          middleText: 'Are you sure you wait to close this game',
          textCancel: 'No, Return',
          textConfirm: 'Yes, Cancel',
          confirmTextColor: Colors.white,
          cancelTextColor: Colors.white,
          buttonColor: const Color(0xFF0042EC),
          backgroundColor: Colors.black,
          barrierDismissible: false,
          onConfirm: () {
            Get.back();
            Get.back();
          },
        );
      },
      icon: const Icon(
        Ionicons.chevron_back_outline,
        color: Colors.white,
      ),
    ),
    title: SizedBox(
        width: Get.width / 3.2,
        child: Image.asset(
          'assets/brand/logo_plain.png',
          key: const ValueKey<String>('logo'),
          fit: BoxFit.contain,
        )),
  );
}

AppBar buildAppBarWithTitle({String text}) {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        Get.back();
      },
      icon: const Icon(
        Ionicons.chevron_back_outline,
        color: Colors.white,
      ),
    ),
    title: Text(
      text,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
  );
}

AppBar buildAppBarEmpty() {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        Get.back();
      },
      icon: const Icon(
        Ionicons.chevron_back_outline,
        color: Colors.white,
      ),
    ),
  );
}

AppBar buildAppBarWithLogoAndTapBtn(
    {void Function() leadFunc, void Function() notiFunc}) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(
        Icons.menu,
        color: Colors.white,
      ),
      color: Colors.white,
      onPressed: leadFunc,
    ),
    title: SizedBox(
        width: Get.width / 3.2,
        child: Image.asset(
          'assets/brand/logo_plain.png',
          fit: BoxFit.contain,
        )),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 15),
        child: IconButton(
          icon: const Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          onPressed: () {
            Get.to(() => NotificationScreen(),
                transition: Transition.rightToLeft,
                curve: Curves.easeInOut,
                duration: const Duration(milliseconds: 400));
          },
        ),
      ),
    ],
  );
}
