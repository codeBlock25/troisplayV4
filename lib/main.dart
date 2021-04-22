import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:troisplay/screens/auth/create_account.dart';
import 'package:troisplay/screens/auth/finish.dart';
import 'package:troisplay/screens/auth/forgot_account.dart';
import 'package:troisplay/screens/auth/login_account.dart';
import 'package:troisplay/screens/game_play/game_picker.dart';
import 'package:troisplay/screens/game_play/ongoing_games.dart';
import 'package:troisplay/screens/home_base.dart';
import 'package:troisplay/screens/welcome/onboarding.dart';
import 'package:troisplay/screens/welcome/splashscreen.dart';
import 'package:troisplay/theme/dark.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(AppInit());
}

class AppInit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Troisplay',
      theme: darkTheme,
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: <GetPage>[
        GetPage(
            name: '/',
            page: () => SplashScreen(),
            transition: Transition.fade,
            curve: Curves.decelerate,
            transitionDuration: const Duration(milliseconds: 400)),
        GetPage(
            name: '/onboarding',
            page: () => OnboardingScreen(),
            transition: Transition.rightToLeft,
            curve: Curves.decelerate,
            transitionDuration: const Duration(milliseconds: 400)),
        GetPage(
            name: '/game_picker',
            page: () => GamePicker(),
            transition: Transition.rightToLeft,
            curve: Curves.easeInOut,
            transitionDuration: const Duration(milliseconds: 400)),
        GetPage(
            name: '/ongoing_games',
            page: () => OnGoingGamesScreen(),
            transition: Transition.rightToLeft,
            curve: Curves.easeInOut,
            transitionDuration: const Duration(milliseconds: 400)),
        GetPage(
            name: '/auth',
            page: () => ForgotAccount(),
            transition: Transition.rightToLeft,
            curve: Curves.easeInOut,
            children: <GetPage>[
              GetPage(
                  name: '/forgot-password',
                  page: () => ForgotAccount(),
                  transition: Transition.rightToLeft,
                  curve: Curves.easeInOut,
                  transitionDuration: const Duration(milliseconds: 400)),
              GetPage(
                  name: '/register',
                  page: () => CreateAccount(),
                  transition: Transition.rightToLeft,
                  curve: Curves.easeInOut,
                  transitionDuration: const Duration(milliseconds: 400)),
              GetPage(
                  name: '/login',
                  page: () => LoginAccount(),
                  transition: Transition.rightToLeft,
                  curve: Curves.easeInOut,
                  transitionDuration: const Duration(milliseconds: 400)),
              GetPage(
                  name: '/finish',
                  page: () => FinishAccountSetupScreen(),
                  transition: Transition.rightToLeft,
                  curve: Curves.easeInOut,
                  transitionDuration: const Duration(milliseconds: 400)),
            ]),
        GetPage(
            name: '/home',
            page: () => HomeScreen(),
            transition: Transition.rightToLeft,
            curve: Curves.easeInOut,
            transitionDuration: const Duration(milliseconds: 400))
      ],
    );
  }
}
