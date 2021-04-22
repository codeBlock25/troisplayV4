import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:troisplay/components/app_bar.dart';
import 'package:troisplay/components/buttons.dart';
import 'package:troisplay/logic/account_auth.dart';

class ForgotAccount extends StatefulWidget {
  @override
  _ForgotAccountState createState() => _ForgotAccountState();
}

class _ForgotAccountState extends State<ForgotAccount> {
  TextEditingController _emailController;
  @override
  void initState() {
    super.initState();
    setState(() {
      _emailController = TextEditingController();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithLogo(),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: SafeArea(
          top: false,
          child: SingleChildScrollView(
            child: SizedBox(
              width: Get.width,
              height: Get.height - 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Let's help your recover your Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text('Phone Number / Email',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xFF0042EC),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16)),
                        ),
                        TextFormField(
                          controller: _emailController,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Enter your phone number / email',
                            prefixIcon: SizedBox(
                              width: 45,
                              child: Icon(
                                Icons.person,
                                color: Colors.grey[300],
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          keyboardAppearance: Brightness.dark,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  FirstChoiceBtn(
                    btnText: 'Request',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: RichText(
                      text: TextSpan(
                          text: 'Remembered your details? ',
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Login',
                                style:
                                    const TextStyle(color: Color(0xFF0042EC)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => toLoginAccountScreen())
                          ]),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: (Get.width / 2) - 45,
                        height: 1,
                        color: const Color(0xFF9A9A9A),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('or',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                      Container(
                        width: (Get.width / 2) - 45,
                        height: 1,
                        color: const Color(0xFF9A9A9A),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: Get.width,
                        padding:
                            EdgeInsets.symmetric(horizontal: Get.width / 12),
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
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  minimumSize: MaterialStateProperty.all(Size(
                                      (Get.width / 2) - (Get.width / 10), 50)),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(5))),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    GetPlatform.isAndroid
                                        ? Icons.alarm
                                        : Icons.alarm,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    GetPlatform.isAndroid ? 'Google' : 'Apple',
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xFF212121)),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  minimumSize: MaterialStateProperty.all(Size(
                                      (Get.width / 2) - (Get.width / 10), 50)),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(5))),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Icon(Icons.alarm, color: Color(0xFF0042EC)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Facebook',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
