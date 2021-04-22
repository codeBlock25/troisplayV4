import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:troisplay/components/objects.dart';
import 'package:troisplay/data/shape.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final GetStorage _box = GetStorage();
  Future<void> load() async {
    final bool isOld = await _box.read('is_old') ?? false;
    final Map<String, dynamic> userAccount = await _box.read('user_account');
    final Map<String, dynamic> player = await _box.read('player');
    if (isOld) {
      if (userAccount != null) {
        if (player != null) {
          Future<void>.delayed(const Duration(seconds: 2),
              () => <void>{Get.offAllNamed('/home')});
          return;
        }
        Future<void>.delayed(const Duration(seconds: 2),
            () => <void>{Get.offAllNamed('/auth/finish')});
        return;
      }
      Future<void>.delayed(const Duration(seconds: 2),
          () => <void>{Get.offAllNamed('/auth/register')});
    } else {
      Future<void>.delayed(const Duration(seconds: 2),
          () => <void>{Get.offAllNamed('/onboarding')});
    }
  }

  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CircleWiget(
            key: const ValueKey<String>('first circle key'),
            top: -(Get.width / 2) / 2.5,
            left: -(Get.width / 2) / 3,
            size: ObjectSize(height: Get.width / 2, width: Get.width / 2),
          ),
          CircleWiget(
            key: const ValueKey<String>('second circle key'),
            bottom: -(Get.width / 2) / 2,
            left: -(Get.width / 2) / 2,
            size: ObjectSize(height: Get.width / 2, width: Get.width / 2),
            isBottom: true,
          ),
          CircleWiget(
            key: const ValueKey<String>('third circle key'),
            top: Get.width / 2.5,
            right: -(Get.width / 2) / 1.3,
            size: ObjectSize(height: Get.width / 2, width: Get.width / 2),
            isRight: true,
          ),
          Positioned(
            top: Get.height / 1.8,
            left: Get.width / 5,
            child: Container(
              width: Get.width / 1.5,
              height: Get.width / 1.5,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: const Color(0xFF0E0E0E),
                  borderRadius: BorderRadius.circular(Get.width / 2),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      offset: const Offset(0, -16),
                      blurRadius: 60,
                    )
                  ]),
              child: Image.asset(
                'assets/brand/logo.png',
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}
