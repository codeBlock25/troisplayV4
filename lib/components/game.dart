import 'dart:math';

import 'package:dio/dio.dart';
// ignore: implementation_imports
import 'package:dio/src/response.dart' as dio_response;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:troisplay/components/buttons.dart';
import 'package:troisplay/data/api.dart';
import 'package:troisplay/data/game_type.dart';
import 'package:troisplay/data/games.dart';
import 'package:troisplay/data/user.dart';
import 'package:troisplay/generated/assets.dart';
import 'package:troisplay/logic/convert.dart';
import 'package:troisplay/logic/game.dart';
import 'package:troisplay/screens/game_play/game_manual.dart';
import 'package:troisplay/screens/game_play/player_picker.dart';

class GameOpView extends StatelessWidget {
  const GameOpView({
    Key key,
    @required this.game,
  }) : super(key: key);
  final GameType game;

  @override
  Widget build(BuildContext context) {
    final Game gamePlay = getGame(game);
    return SizedBox(
      width: min(max((Get.width / 2) - 30, 110), 180),
      height: 220,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xFF303030)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            minimumSize: MaterialStateProperty.all(
                Size(min(max((Get.width / 2) - 30, 110), 180), 220)),
            padding: MaterialStateProperty.all(const EdgeInsets.all(10))),
        onPressed: () {
          Get.to(() => PlayerPicker(game: game),
              transition: Transition.rightToLeft,
              curve: Curves.easeInOut,
              duration: const Duration(milliseconds: 400));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                width: (Get.width / 3.5) - 30,
                height: (Get.width / 3.5) - 30,
                margin: const EdgeInsets.all(30),
                child: Image.asset(
                  gamePlay.logo,
                  width: (Get.width / 2) - 30,
                  height: (Get.width / 2) - 30,
                ),
              ),
            ),
            Text(
              gamePlay.title,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Min Join: ${toMoney(gamePlay.minPrice)}',
              style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF0042EC),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class GameOp2View extends StatelessWidget {
  GameOp2View(
      {Key key,
      @required this.gamePlay,
      @required this.game,
      @required this.price,
      @required this.stake,
      this.id,
      this.isOngoing = false})
      : super(key: key);

  final Game gamePlay;
  final GameType game;
  final int price;
  final int stake;
  final bool isOngoing;
  final String id;
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
        .get('$apiKey/api/can-play-as-player2',
            queryParameters: <String, String>{
              'id': id ?? '',
            },
            options: Options(headers: <String, String>{
              'authorization': 'Bearer ${_user.token}'
            }))
        .then((dio_response.Response<dynamic> value) {
      if (value.data['canPlay'] == true) {
        Get.to(
            () => GameManualScreen(
                  game: game,
                  stake: stake,
                  isPlayer1: false,
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
          backgroundColor: Colors.black.withOpacity(0.5),
          middleText: 'This game is already taken please choose another one.',
          onCancel: () {
            Get.back();
          },
          onConfirm: () {
            Get.back();
          });
    }).catchError((dynamic error) {
      debugPrint(error.toString());
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
    return Container(
      width: Get.width / 2 - 50,
      height: 200,
      margin: EdgeInsets.only(
        top: (Get.width / 2 - 50) / 2,
      ),
      constraints: const BoxConstraints(
          maxWidth: 200, maxHeight: 230, minWidth: 120, minHeight: 230),
      decoration: BoxDecoration(
          color: const Color(0xFF303030),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Positioned(
            top: -max(min((Get.width / 2 - 50) / 2, 100), 60) / 1.7,
            left: max(min((Get.width / 2 - 50) / 2, 100), 60) / 2.49,
            child: Container(
              width: (Get.width / 2 - 50) / 1.7,
              height: (Get.width / 2 - 50) / 1.7,
              clipBehavior: Clip.hardEdge,
              padding: const EdgeInsets.all(10),
              constraints: const BoxConstraints(
                  maxWidth: 100, maxHeight: 100, minWidth: 60, minHeight: 60),
              decoration: BoxDecoration(
                color: const Color(0xFF303030),
                borderRadius: BorderRadius.circular(
                  max(min((Get.width / 2 - 50) / 2, 100), 60) / 1.5,
                ),
              ),
              child: Image.asset(
                gamePlay.logo,
                key: const ValueKey<String>('Game Logo Image'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: ((Get.width / 2 - 50) / 1.7) / 2 + 10,
                  ),
                  Text(
                    returnGameName(game),
                    key: const ValueKey<String>('gameName'),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    'stand to win',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF0042EC),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: const Color(0xFF263456),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SvgPicture.asset(Assets.iconsMoney,
                            width: Get.width / 17.25),
                        Text(toStrictMoney(price.toInt()),
                            key: const ValueKey<String>('winningPrice'),
                            style: const TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 16))
                      ],
                    ),
                  ),
                  if (isOngoing)
                    AltChoiceBtn(
                      btnText: 'Staked ${toStrictMoney(stake.toInt())}',
                    )
                  else
                    FirstChoiceBtn(
                      btnText: 'Play ${toStrictMoney(stake.toInt())}',
                      small: true,
                      func: () async => <void>{await canPlay()},
                    )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
