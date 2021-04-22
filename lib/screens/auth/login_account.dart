import 'package:dio/dio.dart';
// ignore: implementation_imports
import 'package:dio/src/response.dart' as dio_response;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ionicons/ionicons.dart';
import 'package:troisplay/components/app_bar.dart';
import 'package:troisplay/components/buttons.dart';
import 'package:troisplay/data/api.dart';
import 'package:troisplay/logic/account_auth.dart';

class LoginAccount extends StatefulWidget {
  @override
  _LoginAccountState createState() => _LoginAccountState();
}

class _LoginAccountState extends State<LoginAccount> {
  TextEditingController _phoneNumberController;
  TextEditingController _passwordController;
  String _genError;
  bool isPasswordVisible = false;
  final GetStorage _box = GetStorage();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    setState(() {
      _phoneNumberController = TextEditingController();
      _passwordController = TextEditingController();
    });
  }

  final Dio _dio = Dio();
  void loginUser() {
    FocusScope.of(context).unfocus();
    if (_formKey.currentState.validate()) {
      Get.defaultDialog(
          title: 'Loading',
          barrierDismissible: false,
          backgroundColor: Colors.black.withOpacity(0.5),
          content: const Center(
              child: CircularProgressIndicator(
            backgroundColor: Colors.white,
          )));
      _dio.get('$apiKey/auth/login', queryParameters: <String, String>{
        'betting_key': _passwordController.text,
        'phone_number': _phoneNumberController.text
      }).then((dio_response.Response<dynamic> value) async {
        if (value.data['old'] == true) {
          await _box.write('user_account', value.data['user']);
          await _box.write('player', value.data['player']);
          Get.offAllNamed('/home');
          return;
        }
        await _box.write('user_account', value.data['user']);
        Get.offAllNamed('/auth/finish');
      }).catchError((dynamic error) {
        final DioError _err = error as DioError;
        debugPrint(_err.toString());
        Get.back();
        if (_err?.response?.statusCode == 404 ||
            _err?.response?.statusCode == 422) {
          setState(() {
            _genError = 'Phone number / Betting key do not match.';
          });
          return;
        } else {
          Get.snackbar('NetWork Error',
              'Sorry we could not connect to the troisplay server, please check your internet connection and try again.',
              backgroundColor: Colors.red,
              colorText: Colors.white,
              duration: const Duration(seconds: 10),
              dismissDirection: SnackDismissDirection.VERTICAL);
        }
        return;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithLogo(),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: SizedBox(
            width: Get.width,
            height: Get.height - 150,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Welcome Back',
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
                          child: Text('Phone Number',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xFF0042EC),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16)),
                        ),
                        TextFormField(
                          controller: _phoneNumberController,
                          style: const TextStyle(color: Colors.white),
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'This field is required';
                            } else if (!value.isPhoneNumber) {
                              return 'Invalid phone number';
                            }
                            return null;
                          },
                          onChanged: (String value) {
                            setState(() {
                              _genError = '';
                            });
                          },
                          autofocus: true,
                          autofillHints: const <String>[
                            AutofillHints.telephoneNumber
                          ],
                          decoration: InputDecoration(
                            hintText: 'Enter your phone number',
                            prefixIcon: SizedBox(
                              width: 45,
                              child: Icon(
                                Icons.call,
                                color: Colors.grey[300],
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                          keyboardAppearance: Brightness.dark,
                        ),
                      ],
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
                          child: Text('Betting Key',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xFF0042EC),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16)),
                        ),
                        TextFormField(
                          controller: _passwordController,
                          style: const TextStyle(color: Colors.white),
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'This field is required';
                            }
                            return null;
                          },
                          onChanged: (String value) {
                            setState(() {
                              _genError = '';
                            });
                          },
                          autofillHints: const <String>[AutofillHints.password],
                          decoration: InputDecoration(
                            errorText: _genError,
                            hintText: 'Enter your password',
                            prefixIcon: SizedBox(
                              width: 45,
                              child: Icon(
                                Icons.lock,
                                color: Colors.grey[300],
                              ),
                            ),
                            suffix: GestureDetector(
                                onTap: () => <void>{
                                      setState(() => <void>{
                                            isPasswordVisible =
                                                !isPasswordVisible
                                          })
                                    },
                                child: Icon(!isPasswordVisible
                                    ? Ionicons.eye
                                    : Ionicons.eye_off)),
                            filled: true,
                            contentPadding: const EdgeInsets.all(20),
                            fillColor: Colors.white.withOpacity(0.05),
                          ),
                          obscureText: true,
                          maxLength: 6,
                          keyboardType: TextInputType.number,
                          keyboardAppearance: Brightness.dark,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: RichText(
                      text: TextSpan(
                          text: 'Forgot your password? ',
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Tap here',
                                style:
                                    const TextStyle(color: Color(0xFF0042EC)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => toForgotAccountScreen())
                          ]),
                    ),
                  ),
                  FirstChoiceBtn(
                    btnText: 'Login',
                    func: () => loginUser(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: RichText(
                      text: TextSpan(
                          text: "Don't have an account? ",
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Register',
                                style:
                                    const TextStyle(color: Color(0xFF0042EC)),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => toCreateAccountScreen())
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
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                minimumSize: MaterialStateProperty.all(
                                  Size((Get.width / 2) - (Get.width / 10), 50),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    GetPlatform.isAndroid
                                        ? Ionicons.logo_google
                                        : Ionicons.logo_apple,
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
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                minimumSize: MaterialStateProperty.all(
                                  Size((Get.width / 2) - (Get.width / 10), 50),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: const Icon(Ionicons.logo_facebook,
                                        color: Color(0xFF0042EC)),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
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
