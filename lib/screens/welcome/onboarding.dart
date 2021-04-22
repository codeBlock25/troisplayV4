import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:troisplay/components/app_bar.dart';
import 'package:troisplay/components/indicator.dart';
import 'package:troisplay/components/onboarding.dart';
import 'package:troisplay/screens/auth/create_account.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController;
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
    setState(() {
      _pageController = PageController();
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void upDatePageCount(int currentPage) {
    setState(() {
      _currentPage = currentPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    final EdgeInsets padding = MediaQuery.of(context).padding;
    return Scaffold(
        appBar: buildAppBarWithLogo(),
        body: Stack(
          children: <Widget>[
            Positioned.fill(
              child: PageView.builder(
                controller: _pageController,
                // ignore: always_specify_types
                onPageChanged: (int currentPage) =>
                    upDatePageCount(currentPage),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return OnboardingView(
                      padding: padding,
                      mainText: index == 0
                          ? 'Platform that brings together our love for money and passion for competition all in one place.'
                          : index == 1
                              ? 'Platform that brings together our love for money and passion for competition all in one place.'
                              : index == 2
                                  ? 'Platform that brings together our love for money and passion for competition all in one place.'
                                  : '',
                      smallText: index == 0
                          ? 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet iaculis id sit aliquam leo vitae eget sodales. Elementum dis faucibus egestas consequat.'
                          : index == 1
                              ? 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet iaculis id sit aliquam leo vitae eget sodales. Elementum dis faucibus egestas consequat.'
                              : index == 2
                                  ? 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet iaculis id sit aliquam leo vitae eget sodales. Elementum dis faucibus egestas consequat.'
                                  : '',
                      position: index + 1);
                },
              ),
            ),
            Positioned(
              bottom: 0 + padding.bottom,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Indicator>[
                      Indicator(
                        // ignore: avoid_bool_literals_in_conditional_expressions
                        isActive: _currentPage == 0,
                      ),
                      Indicator(
                        // ignore: avoid_bool_literals_in_conditional_expressions
                        isActive: _currentPage == 1,
                      ),
                      Indicator(
                        // ignore: avoid_bool_literals_in_conditional_expressions
                        isActive: _currentPage == 2,
                      ),
                    ],
                  ),
                  Container(
                    width: Get.width,
                    padding: EdgeInsets.symmetric(horizontal: Get.width / 12),
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF3E3E3E)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            minimumSize: MaterialStateProperty.all(
                                Size((Get.width / 2) - (Get.width / 10), 50)),
                          ),
                          onPressed: () {
                            if (_currentPage == 0) {
                              Get.to(() => CreateAccount(),
                                  transition: Transition.rightToLeft,
                                  curve: Curves.easeInOut,
                                  duration: const Duration(milliseconds: 400));
                              return;
                            } else {
                              _pageController.previousPage(
                                  duration: const Duration(milliseconds: 800),
                                  curve: Curves.fastLinearToSlowEaseIn);
                              return;
                            }
                          },
                          child: Text(
                            _currentPage == 0 ? 'Skip' : 'Previous',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
                          ),
                        ),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF0042EC)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            minimumSize: MaterialStateProperty.all(
                                Size((Get.width / 2) - (Get.width / 10), 50)),
                          ),
                          onPressed: () {
                            if (_currentPage == 2) {
                              Get.to(() => CreateAccount(),
                                  transition: Transition.rightToLeft,
                                  curve: Curves.easeInOut,
                                  duration: const Duration(milliseconds: 400));
                              return;
                            } else {
                              _pageController.nextPage(
                                  duration: const Duration(milliseconds: 800),
                                  curve: Curves.fastLinearToSlowEaseIn);
                              return;
                            }
                          },
                          child: Text(
                            _currentPage == 2 ? 'Create Account' : 'Next',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
