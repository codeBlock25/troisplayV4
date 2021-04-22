import 'package:dio/dio.dart';
// ignore: implementation_imports
import 'package:dio/src/response.dart' as dio_response;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:troisplay/components/app_bar.dart';
import 'package:troisplay/components/buttons.dart';
import 'package:troisplay/data/api.dart';
import 'package:troisplay/data/user.dart';

class FinishAccountSetupScreen extends StatefulWidget {
  @override
  _FinishAccountSetupScreenState createState() =>
      _FinishAccountSetupScreenState();
}

class _FinishAccountSetupScreenState extends State<FinishAccountSetupScreen> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  String _emailError;
  final GetStorage _box = GetStorage();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final Dio _dio = Dio();

  void finishUserSignup() {
    final User user = User.fromJson(_box.read('user_account'));
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
      _dio
          .post('$apiKey/api/player/create',
              data: <String, dynamic>{
                'username': _userNameController.text,
                'email': _emailController.text,
                'address': _addressController.text,
                'state': _stateController.text,
                'country': _countryController.text,
              },
              options: Options(headers: <String, String>{
                'authorization': 'Bearer ${user.token}'
              }))
          .then((dio_response.Response<dynamic> value) async {
        await _box.write('player', value.data);
        Get.offAllNamed('/home');
        return;
      }).catchError((dynamic error) {
        final DioError _err = error as DioError;

        debugPrint(_err?.response?.statusMessage);
        Get.back();
        if (_err?.response?.statusCode == 400) {
          setState(() {
            _emailError = 'Email is already used';
          });
          return;
        } else if (_err?.response?.statusCode == 422) {
          setState(() {
            _emailError = _err?.response?.statusMessage;
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
      body: SafeArea(
        top: false,
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: SingleChildScrollView(
            child: SizedBox(
              width: Get.width,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Just few things',
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
                            child: Text('Username',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF0042EC),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16)),
                          ),
                          TextFormField(
                            controller: _userNameController,
                            style: const TextStyle(color: Colors.white),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'This field is required';
                              } else if (value.length > 20) {
                                return "Your username can't be greater than 20 digits";
                              } else if (value.length < 4) {
                                return "Your username can't be less than 4 digits";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your username',
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text('Email',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF0042EC),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16)),
                          ),
                          TextFormField(
                            controller: _emailController,
                            style: const TextStyle(color: Colors.white),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'This field is required';
                              } else if (!value.isEmail) {
                                return 'Invalid email';
                              }
                              return null;
                            },
                            onChanged: (String value) {
                              setState(() {
                                _emailError = '';
                              });
                            },
                            decoration: InputDecoration(
                              errorText: _emailError,
                              hintText: 'Enter your email address',
                              prefixIcon: SizedBox(
                                width: 45,
                                child: Icon(
                                  Icons.email,
                                  color: Colors.grey[300],
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
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
                            child: Text('Address',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF0042EC),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16)),
                          ),
                          TextFormField(
                            controller: _addressController,
                            style: const TextStyle(color: Colors.white),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'This field is required';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your address',
                              prefixIcon: SizedBox(
                                width: 45,
                                child: Icon(
                                  Icons.apartment,
                                  color: Colors.grey[300],
                                ),
                              ),
                              filled: true,
                              contentPadding: const EdgeInsets.all(20),
                              fillColor: Colors.white.withOpacity(0.05),
                            ),
                            keyboardType: TextInputType.streetAddress,
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
                            child: Text('Resident State',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF0042EC),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16)),
                          ),
                          TextFormField(
                            controller: _stateController,
                            style: const TextStyle(color: Colors.white),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'This field is required';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your state of resident',
                              prefixIcon: SizedBox(
                                width: 45,
                                child: Icon(
                                  Icons.location_city,
                                  color: Colors.grey[300],
                                ),
                              ),
                              filled: true,
                              contentPadding: const EdgeInsets.all(20),
                              fillColor: Colors.white.withOpacity(0.05),
                            ),
                            keyboardType: TextInputType.text,
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
                            child: Text('Country',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF0042EC),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16)),
                          ),
                          TextFormField(
                            controller: _countryController,
                            style: const TextStyle(color: Colors.white),
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'This field is required';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your country',
                              prefixIcon: SizedBox(
                                width: 45,
                                child: Icon(
                                  Icons.public,
                                  color: Colors.grey[300],
                                ),
                              ),
                              filled: true,
                              contentPadding: const EdgeInsets.all(20),
                              fillColor: Colors.white.withOpacity(0.05),
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
                      btnText: 'Finish',
                      func: () => finishUserSignup(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
