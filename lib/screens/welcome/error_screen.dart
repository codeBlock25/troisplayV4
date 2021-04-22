import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:troisplay/components/app_bar.dart';
import 'package:troisplay/components/buttons.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen({Key key, @required this.error}) : super(key: key);

  final String error;
  @override
  _ErrorScreenState createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final EdgeInsets _padding = MediaQuery.of(context).padding;
    return Scaffold(
      appBar: buildAppBarWithLogo(),
      body: Container(
        width: _size.shortestSide,
        height: _size.longestSide,
        padding: EdgeInsets.symmetric(
          horizontal: _size.shortestSide / 16.59,
          vertical: _padding.bottom + 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(Ionicons.close_circle,
                size: _size.shortestSide / 4.14, color: Colors.red),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.error,
              style: TextStyle(
                  fontSize: _size.shortestSide / 23,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            FirstChoiceBtn(
              btnText: 'Refresh',
              func: () => <void>{Get.offAllNamed('/home')},
              small: true,
            ),
          ],
        ),
      ),
    );
  }
}
