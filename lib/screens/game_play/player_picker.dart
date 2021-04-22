import 'dart:math';

import 'package:dio/dio.dart';
// ignore: implementation_imports
import 'package:dio/src/response.dart' as dio_response;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:troisplay/components/app_bar.dart';
import 'package:troisplay/components/buttons.dart';
import 'package:troisplay/data/api.dart';
import 'package:troisplay/data/game_type.dart';
import 'package:troisplay/data/games.dart';
import 'package:troisplay/data/user.dart';
import 'package:troisplay/generated/assets.dart';
import 'package:troisplay/icons/money.dart';
import 'package:troisplay/logic/convert.dart';
import 'package:troisplay/logic/game.dart';
import 'package:troisplay/screens/game_play/game_manual.dart';
import 'package:troisplay/screens/game_play/player2_game_picker.dart';

class PlayerPicker extends StatefulWidget {
  const PlayerPicker({Key key, @required this.game}) : super(key: key);
  final GameType game;
  @override
  _PlayerPickerState createState() => _PlayerPickerState();
}

class _PlayerPickerState extends State<PlayerPicker> {
  String dropdownValue = toMoney(100);
  bool _open = true;
  bool isPlayer1 = true;
  final List<String> _prices = <String>[
    toMoney(100),
    toMoney(300),
    toMoney(500),
    toMoney(1000),
    toMoney(3000)
  ];
  final Dio _dio = Dio();
  final GetStorage _box = GetStorage();

  Future<void> canPlay() async {
    Get.defaultDialog(
        title: 'Loading',
        barrierDismissible: false,
        backgroundColor: Colors.black.withOpacity(0.5),
        content: const Center(
            child: CircularProgressIndicator(
          backgroundColor: Colors.white,
        )));
    final User _user = User.fromJson(await _box.read('user_account'));
    await _dio
        .get('$apiKey/api/check/can-play',
            queryParameters: <String, int>{
              'game': widget.game.index,
              'stake': fromMoneytoInt(dropdownValue)
            },
            options: Options(headers: <String, String>{
              'authorization': 'Bearer ${_user.token}'
            }))
        .then((dio_response.Response<dynamic> value) {
      if (value.data['canPlay'] == true) {
        Get.to(
            () => GameManualScreen(
                  game: widget.game,
                  stake: fromMoneytoInt(dropdownValue),
                ),
            transition: Transition.rightToLeft,
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 400));
        return;
      }
      Get.back();
      Get.defaultDialog(
        title: 'Action Required',
        barrierDismissible: false,
        backgroundColor: Colors.black,
        confirmTextColor: Colors.white,
        cancelTextColor: Colors.white,
        textConfirm: 'Yes, I would',
        textCancel: 'No',
        middleText:
            'A game with this stake amount already exit. Would you like check it out?',
        onCancel: () {
          setState(() {
            _open = true;
          });
          Get.back();
        },
        onConfirm: () {
          Navigator.of(context).pushAndRemoveUntil(
              GetPageRoute<GetPage>(
                page: () => Player2GamePicker(
                  game: widget.game,
                  stake: fromMoneytoInt(dropdownValue),
                ),
                transition: Transition.rightToLeft,
                transitionDuration: const Duration(milliseconds: 400),
                curve: Curves.decelerate,
              ),
              ModalRoute.withName('/home'));
        },
      );
    }).catchError((dynamic error) {
      Get.back();
      Get.snackbar('NetWork Error',
          'Sorry we could not connect to the troisplay server, please check your internet connection and try again.',
          backgroundColor: Colors.red,
          colorText: Colors.white,
          duration: const Duration(seconds: 10),
          dismissDirection: SnackDismissDirection.VERTICAL);
    });
  }

  @override
  Widget build(BuildContext context) {
    final Game gamePlay = getGame(widget.game);
    return Scaffold(
      appBar: buildAppBarWithLogo(),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Select Player',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF1D1D1D)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            minimumSize: MaterialStateProperty.all(
                                Size(Get.width / 2, Get.width / 2)),
                          ),
                          onPressed: () {
                            setState(() {
                              _open = !_open;
                              isPlayer1 = true;
                            });
                          },
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: SvgPicture.asset(
                                  Assets.iconsPlayer1,
                                  width: Get.width / 2.5,
                                  height: Get.width / 2.5,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Player 1',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF1D1D1D)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            minimumSize: MaterialStateProperty.all(
                                Size(Get.width / 2, Get.width / 2)),
                          ),
                          onPressed: () {
                            setState(() {
                              _open = !_open;
                              isPlayer1 = false;
                            });
                          },
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: SvgPicture.asset(
                                  Assets.iconsPlayer2,
                                  width: Get.width / 2.5,
                                  height: Get.width / 2.5,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Player 2',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 800),
              curve: Curves.elasticInOut,
              top: _open ? Get.height + 100 : 0,
              left: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _open = !_open;
                  });
                },
                child: Container(
                  width: Get.width,
                  height: Get.height,
                  color: const Color(0xFF151515).withOpacity(0.72),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 800),
              curve: Curves.elasticInOut,
              top: _open ? Get.height + 100 : -40,
              left: 0,
              right: 0,
              child: SizedBox(
                width: Get.width,
                height: Get.height + 40,
                child: Center(
                  child: Container(
                    width: Get.width - (Get.width / 10),
                    height: 250,
                    decoration: BoxDecoration(
                        color: const Color(0xFF191919),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 34,
                              offset: const Offset(0, 24)),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 15, bottom: 10),
                            child: Text('Set your game',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10, left: 20),
                          child: Text('Game Type',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color(0xFFBCBCBC))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 20),
                          child: Text(gamePlay.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10, left: 20),
                          child: Text(
                            'Stack amount',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Color(0xFFBCBCBC)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 45,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF263456),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: CustomPaint(
                                  painter: MoneyIcon(),
                                  size: const Size(15, 10),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 45,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF232323),
                                      border: Border.all(
                                          color: const Color(0xFFC9D8FF)),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: const Icon(Icons.arrow_drop_down,
                                        color: Colors.white),
                                    elevation: 16,
                                    underline: Container(
                                        height: 0, color: Colors.transparent),
                                    onChanged: (String newValue) {
                                      setState(() {
                                        dropdownValue = newValue;
                                      });
                                    },
                                    items: _prices
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Container(
                                            width:
                                                (Get.width - (Get.width / 10)) -
                                                    150,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Text(value)),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: FirstChoiceBtn(
                            btnText: 'Play',
                            func: () {
                              if (isPlayer1) {
                                canPlay();
                              } else {
                                Get.to(
                                    () => Player2GamePicker(
                                          game: widget.game,
                                          stake: fromMoneytoInt(dropdownValue),
                                        ),
                                    transition: Transition.rightToLeft,
                                    curve: Curves.easeInOut,
                                    duration:
                                        const Duration(milliseconds: 600));
                              }
                            },
                            width: min(Get.width / 3, 150),
                            small: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
