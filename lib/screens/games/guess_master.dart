import 'dart:math';

import 'package:dio/dio.dart';
// ignore: implementation_imports
import 'package:dio/src/response.dart' as dio_response;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:troisplay/components/app_bar.dart';
import 'package:troisplay/components/buttons.dart';
import 'package:troisplay/data/api.dart';
import 'package:troisplay/data/game_type.dart';
import 'package:troisplay/data/games.dart';
import 'package:troisplay/data/played_games.dart';
import 'package:troisplay/data/stat_type.dart';
import 'package:troisplay/data/user.dart';
import 'package:troisplay/logic/game.dart';
import 'package:troisplay/logic/hint.dart';
import 'package:troisplay/screens/game_play/game_response.dart';

class GuessMasterGame extends StatefulWidget {
  const GuessMasterGame({this.isPlayer1 = true, @required this.stake});
  final bool isPlayer1;
  final int stake;
  @override
  _GuessMasterGameState createState() => _GuessMasterGameState();
}

class _GuessMasterGameState extends State<GuessMasterGame> {
  GuessMasterGameRound _rounds = GuessMasterGameRound(
      round: Round.first, choice: GuessMasterChoices.unknown);
  int trial = 0;
  Round currentRoundChange = Round.first;
  GuessMasterChoices _choice = GuessMasterChoices.unknown;
  final GetStorage _box = GetStorage();
  final Dio _dio = Dio();
  Future<void> playGame() async {
    final List<PlayedGames> alreadyGames =
        _box.read('games') ?? <PlayedGames>[];
    final User _user = User.fromJson(await _box.read('user_account'));
    Get.defaultDialog(
        title: 'Loading',
        barrierDismissible: false,
        backgroundColor: Colors.black.withOpacity(0.5),
        content: const Center(
            child: CircularProgressIndicator(
          backgroundColor: Colors.white,
        )));
    await _dio
        .post('$apiKey/api/game-play/guess-master',
            data: <String, dynamic>{
              'stake': widget?.stake ?? 100,
              'moves': <Map<String, int>>[_rounds.toJson()],
            },
            options: Options(headers: <String, String>{
              'authorization': 'Bearer ${_user.token}'
            }))
        .then((dio_response.Response<dynamic> value) async {
      try {
        alreadyGames.add(
            PlayedGames.fromJson(value.data['game'] as Map<String, dynamic>));
        await _box.write('games', alreadyGames.toList());
        Get.offUntil(
            GetPageRoute<GetPage>(
                page: () => const GameResponseScreen(
                      stat: GameResponse.finish,
                    ),
                transition: Transition.rightToLeft,
                curve: Curves.easeInOut,
                transitionDuration: const Duration(milliseconds: 400)),
            ModalRoute.withName('/home'));
        return null;
      } catch (e) {
        debugPrint(e.toString());
        Get.back();
        Get.snackbar('App Error',
            'Sorry we could not connect to the troisplay server, please check your internet connection and try again.',
            backgroundColor: Colors.red,
            colorText: Colors.white,
            duration: const Duration(seconds: 10),
            dismissDirection: SnackDismissDirection.VERTICAL);
        return null;
      }
    }).catchError((dynamic error) {
      DioError _dioError;
      if (error.runtimeType == DioError) {
        _dioError = error as DioError;

        debugPrint(_rounds.toJson().toString());
        debugPrint(_dioError.response.data.toString());
      }
      Get.back();
      Get.snackbar('NetWork Error',
          'Sorry we could not connect to the troisplay server, please check your internet connection and try again.',
          backgroundColor: Colors.red,
          colorText: Colors.white,
          duration: const Duration(seconds: 10),
          dismissDirection: SnackDismissDirection.VERTICAL);
    });
  }

  Future<bool> onWillPop() async {
    return await Get.defaultDialog(
          title: 'Action Required!',
          middleText: 'Are you sure you wait to close this game',
          textCancel: 'No, Return',
          textConfirm: 'Yes, Cancel',
          confirmTextColor: Colors.white,
          cancelTextColor: Colors.white,
          buttonColor: const Color(0xFF0042EC),
          backgroundColor: Colors.black,
          barrierDismissible: false,
          onConfirm: () {
            Get.back();
            Get.back();
          },
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    final Game gamePlay = getGame(GameType.roshambo);
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        appBar: buildGameAppBarWithLogo(),
        body: Container(
          width: Get.width,
          height: Get.height,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Text(
                    'Your Moves',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GuessMasterPlayerChoice(
                    gamePlay: gamePlay,
                    choice: _rounds.choice,
                    active: Round.first == currentRoundChange,
                    func: () {
                      setState(() {
                        currentRoundChange = Round.first;
                      });
                    },
                    round: Round.first,
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Options',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF9E9E9E),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Text(
                        guessMasterGameHint(choice: _rounds.choice),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xFFC9C9C9),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: List<Widget>.generate(5, (int index) {
                        return Container(
                            width: min(max(Get.width / 4.5 - 25, 60), 90),
                            height: min(max(Get.width / 4.5 - 25, 60), 90)
                                    .toDouble() +
                                20.toDouble() +
                                10,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: <Widget>[
                                TextButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(_choice ==
                                                  returnGuessMasterChoice(index)
                                              ? const Color(0xFF0042EC)
                                              : const Color(0xFFC4C4C4)
                                                  .withOpacity(0.31)),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                      minimumSize: MaterialStateProperty.all(
                                          Size(
                                              min(max(Get.width / 5 - 20, 40),
                                                  80),
                                              min(max(Get.width / 4.5 - 25, 60),
                                                  90))),
                                      padding: MaterialStateProperty.all(
                                          const EdgeInsets.all(5))),
                                  onPressed: () {
                                    final GuessMasterGameRound _round = _rounds;
                                    _round.choice =
                                        returnGuessMasterChoice(index);
                                    setState(() {
                                      _choice = returnGuessMasterChoice(index);
                                    });
                                  },
                                  child: SizedBox(
                                    width: min(max(Get.width / 5 - 20, 40), 80),
                                    height:
                                        min(max(Get.width / 5 - 20, 40), 80),
                                    child: Center(
                                      child: Text(
                                        (returnGuessMasterChoice(index).index +
                                                1)
                                            .toString(),
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 40),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                      returnGuessMasterChoiceInWords(index),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500)),
                                )
                              ],
                            ));
                      }).toList(),
                    ),
                    Center(
                      child: FirstChoiceBtn(
                        btnText: 'Play',
                        func: playGame,
                        width: Get.width / 3,
                        isDisabled:
                            _rounds.choice == GuessMasterChoices.unknown,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
