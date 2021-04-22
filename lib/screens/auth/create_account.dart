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
import 'package:troisplay/screens/auth/login_account.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController _fullNameController;
  TextEditingController _phoneNumberController;
  TextEditingController _passwordController;
  String _phoneNumberError;
  bool isPasswordVisible = false;
  final GetStorage _box = GetStorage();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    setState(() {
      final bool isOld = _box.read('is_old') ?? false;
      if (!isOld) {
        _box.write('is_old', true);
      }
      _fullNameController = TextEditingController();
      _phoneNumberController = TextEditingController();
      _passwordController = TextEditingController();
    });
  }

  final Dio _dio = Dio();
  void registerNewUser() {
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
      _dio.post('$apiKey/auth/register', data: <String, dynamic>{
        'full_name': _fullNameController.text.trim(),
        'betting_key': _passwordController.text.trim(),
        'phone_number': _phoneNumberController.text.trim()
      }).then((dio_response.Response<dynamic> value) async {
        try {
          await _box.write('user_account', value.data);
          Get.offAllNamed('/auth/finish');
          return null;
        } catch (e) {
          Get.snackbar('App Error',
              'Sorry we could not connect to the troisplay server, please check your internet connection and try again.',
              backgroundColor: Colors.red,
              colorText: Colors.white,
              duration: const Duration(seconds: 10),
              dismissDirection: SnackDismissDirection.VERTICAL);
          return null;
        }
      }).catchError((dynamic error) {
        final DioError _err = error as DioError;
        Get.back();
        if (_err?.response?.statusCode == 400) {
          setState(() {
            _phoneNumberError = 'Invalid phone number format';
          });
          return null;
        } else if (_err?.response?.statusCode == 422) {
          setState(() {
            _phoneNumberError = _err?.response?.statusMessage;
          });
          return null;
        } else {
          Get.snackbar('NetWork Error',
              'Sorry we could not connect to the troisplay server, please check your internet connection and try again.',
              backgroundColor: Colors.red,
              colorText: Colors.white,
              duration: const Duration(seconds: 10),
              dismissDirection: SnackDismissDirection.VERTICAL);
        }
        return null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithLogo(),
      body: SafeArea(
        top: false,
        child: SizedBox(
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
                        "Let's get you started",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text('Full Name',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF0042EC),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16)),
                          ),
                          TextFormField(
                            controller: _fullNameController,
                            style: const TextStyle(color: Colors.white),
                            validator: (String value) {
                              debugPrint(
                                  value.trim().split(' ').length.toString());
                              if (value.isEmpty) {
                                return 'This field is required';
                              } else if (value.trim().split(' ').length < 2) {
                                return 'Please provide your First Name and Last Name';
                              } else if (value.trim().split(' ').length > 3) {
                                return 'Only your First, Last and middle Names are needed';
                              }
                              return null;
                            },
                            autofocus: true,
                            autofillHints: const <String>[AutofillHints.name],
                            decoration: InputDecoration(
                              hintText: 'Enter your full name',
                              prefixIcon: SizedBox(
                                width: 45,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.grey[300],
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.name,
                            keyboardAppearance: Brightness.dark,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
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
                                _phoneNumberError = '';
                              });
                            },
                            autofillHints: const <String>[
                              AutofillHints.telephoneNumber
                            ],
                            decoration: InputDecoration(
                              errorText: _phoneNumberError,
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
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
                            autofillHints: const <String>[
                              AutofillHints.newPassword
                            ],
                            decoration: InputDecoration(
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
                            obscureText: !isPasswordVisible,
                            maxLength: 6,
                            keyboardType: TextInputType.number,
                            keyboardAppearance: Brightness.dark,
                          ),
                        ],
                      ),
                    ),
                    FirstChoiceBtn(
                      btnText: 'Register',
                      func: () => registerNewUser(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: RichText(
                        text: TextSpan(
                            text: 'Already have an account? ',
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
                    const AltAccountOauthRow(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void toLoginAccountScreen() {
    Get.to(() => LoginAccount(),
        transition: Transition.rightToLeft,
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 400));
  }
}

class AltAccountOauthRow extends StatelessWidget {
  const AltAccountOauthRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: Get.width / 12),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF3E3E3E)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    minimumSize: MaterialStateProperty.all(
                        Size((Get.width / 2) - (Get.width / 10), 50)),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(5))),
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
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF212121)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    minimumSize: MaterialStateProperty.all(
                        Size((Get.width / 2) - (Get.width / 10), 50)),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(5))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(Ionicons.logo_facebook,
                          color: Color(0xFF0042EC)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Facebook',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
