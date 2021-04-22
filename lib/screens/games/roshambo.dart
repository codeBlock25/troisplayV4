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
import 'package:troisplay/data/played_games.dart';
import 'package:troisplay/data/stat_type.dart';
import 'package:troisplay/data/user.dart';
import 'package:troisplay/generated/assets.dart';
import 'package:troisplay/logic/game.dart';
import 'package:troisplay/logic/hint.dart';
import 'package:troisplay/screens/game_play/game_response.dart';

class RoshamboGame extends StatefulWidget {
  const RoshamboGame({this.isPlayer1 = true, this.stake});
  final bool isPlayer1;
  final int stake;
  @override
  _RoshamboGameState createState() => _RoshamboGameState();
}

class _RoshamboGameState extends State<RoshamboGame> {
  List<RoshamboGameRound> _rounds = <RoshamboGameRound>[
    RoshamboGameRound(round: Round.first, choice: RoshamboChoices.unknown),
    RoshamboGameRound(round: Round.second, choice: RoshamboChoices.unknown),
    RoshamboGameRound(round: Round.third, choice: RoshamboChoices.unknown),
    RoshamboGameRound(round: Round.forth, choice: RoshamboChoices.unknown),
    RoshamboGameRound(round: Round.fifth, choice: RoshamboChoices.unknown),
  ];
  Round currentRoundChange = Round.first;
  RoshamboChoices _choice = RoshamboChoices.unknown;
  final Dio _dio = Dio();
  final GetStorage _box = GetStorage();
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
    _dio
        .post('$apiKey/api/game-play/roshambo',
            data: <String, dynamic>{
              'stake': widget?.stake ?? 100,
              'moves': <Map<String, int>>[
                _rounds[0].toJson(),
                _rounds[1].toJson(),
                _rounds[2].toJson(),
                _rounds[3].toJson(),
                _rounds[4].toJson(),
              ],
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
        Get.snackbar('App Error',
            'Sorry we could not connect to the troisplay server, please check your internet connection and try again.',
            backgroundColor: Colors.red,
            colorText: Colors.white,
            duration: const Duration(seconds: 10),
            dismissDirection: SnackDismissDirection.VERTICAL);
        return null;
      }
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RoshamboPlayerChoice(
                        gamePlay: gamePlay,
                        choice: _rounds[0].choice,
                        active: Round.first == currentRoundChange,
                        func: () {
                          setState(() {
                            currentRoundChange = Round.first;
                          });
                        },
                        round: Round.first,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      RoshamboPlayerChoice(
                        gamePlay: gamePlay,
                        choice: _rounds[1].choice,
                        active: Round.second == currentRoundChange,
                        func: () {
                          setState(() {
                            currentRoundChange = Round.second;
                          });
                        },
                        round: Round.second,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      RoshamboPlayerChoice(
                        gamePlay: gamePlay,
                        choice: _rounds[2].choice,
                        active: Round.third == currentRoundChange,
                        func: () {
                          setState(() {
                            currentRoundChange = Round.third;
                          });
                        },
                        round: Round.third,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      RoshamboPlayerChoice(
                        gamePlay: gamePlay,
                        choice: _rounds[3].choice,
                        active: Round.forth == currentRoundChange,
                        func: () {
                          setState(() {
                            currentRoundChange = Round.forth;
                          });
                        },
                        round: Round.forth,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      RoshamboPlayerChoice(
                        gamePlay: gamePlay,
                        active: Round.fifth == currentRoundChange,
                        choice: _rounds[4].choice,
                        func: () {
                          setState(() {
                            currentRoundChange = Round.fifth;
                          });
                        },
                        round: Round.fifth,
                      ),
                    ],
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
                        roshamboGameHint(
                            choice:
                                _rounds.firstWhere((RoshamboGameRound game) {
                              return game.round == currentRoundChange;
                            }).choice,
                            isPlayer1: widget.isPlayer1),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xFFC9C9C9),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            width: min(max(Get.width / 4.5 - 25, 60), 90),
                            height: min(max(Get.width / 4.5 - 25, 60), 90)
                                    .toDouble() +
                                20.toDouble() +
                                40,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: <Widget>[
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.decelerate,
                                  height:
                                      _choice != RoshamboChoices.paper ? 20 : 0,
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      _choice == RoshamboChoices.paper
                                          ? const Color(0xFF0042EC)
                                          : Colors.transparent,
                                    ),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    minimumSize: MaterialStateProperty.all(Size(
                                        50,
                                        min(max(Get.width / 4.5 - 25, 60),
                                            90))),
                                  ),
                                  onPressed: () {
                                    final RoshamboGameRound _round = _rounds
                                        .firstWhere(
                                            (RoshamboGameRound gameRound) =>
                                                gameRound.round ==
                                                currentRoundChange);
                                    final int _roundIndex = _rounds.indexWhere(
                                        (RoshamboGameRound gameRound) =>
                                            gameRound.round ==
                                            currentRoundChange);
                                    final List<RoshamboGameRound> _allRounds =
                                        _rounds;
                                    _round.choice = RoshamboChoices.paper;
                                    _allRounds[_roundIndex] = _round;
                                    setState(() {
                                      currentRoundChange =
                                          nextRound(currentRoundChange);
                                      _rounds = _allRounds;
                                      _choice = RoshamboChoices.paper;
                                    });
                                  },
                                  child: SizedBox(
                                    width: min(max(Get.width / 5 - 20, 40), 80),
                                    height:
                                        min(max(Get.width / 5 - 20, 40), 80),
                                    child: SvgPicture.asset(
                                        Assets.iconsPaperIcon,
                                        width: min(
                                            max(Get.width / 5 - 20, 40), 80),
                                        height: min(
                                            max(Get.width / 5 - 20, 40), 80),
                                        color: _choice != RoshamboChoices.paper
                                            ? Colors.grey[200]
                                            : Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: _choice == RoshamboChoices.paper
                                      ? const Text('Paper',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500))
                                      : const SizedBox(),
                                )
                              ],
                            )),
                        Container(
                            width: min(max(Get.width / 4.5 - 25, 60), 90),
                            height: min(max(Get.width / 4.5 - 25, 60), 90)
                                    .toDouble() +
                                20.toDouble() +
                                40,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: <Widget>[
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.decelerate,
                                  height:
                                      _choice != RoshamboChoices.rock ? 20 : 0,
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      _choice == RoshamboChoices.rock
                                          ? const Color(0xFF0042EC)
                                          : Colors.transparent,
                                    ),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    minimumSize: MaterialStateProperty.all(Size(
                                        50,
                                        min(max(Get.width / 4.5 - 25, 60),
                                            90))),
                                  ),
                                  onPressed: () {
                                    final RoshamboGameRound _round = _rounds
                                        .firstWhere(
                                            (RoshamboGameRound gameRound) =>
                                                gameRound.round ==
                                                currentRoundChange);
                                    final int _roundIndex = _rounds.indexWhere(
                                        (RoshamboGameRound gameRound) =>
                                            gameRound.round ==
                                            currentRoundChange);
                                    final List<RoshamboGameRound> _allRounds =
                                        _rounds;
                                    _round.choice = RoshamboChoices.rock;
                                    _allRounds[_roundIndex] = _round;
                                    setState(() {
                                      currentRoundChange =
                                          nextRound(currentRoundChange);
                                      _rounds = _allRounds;
                                      _choice = RoshamboChoices.rock;
                                    });
                                  },
                                  child: SizedBox(
                                    width: min(max(Get.width / 5 - 20, 40), 80),
                                    height:
                                        min(max(Get.width / 5 - 20, 40), 80),
                                    child: SvgPicture.asset(
                                        Assets.iconsRockIcon,
                                        width: min(
                                            max(Get.width / 5 - 20, 40), 80),
                                        height: min(
                                            max(Get.width / 5 - 20, 40), 80),
                                        color: _choice != RoshamboChoices.rock
                                            ? Colors.grey[200]
                                            : Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: _choice == RoshamboChoices.rock
                                      ? const Text('Rock',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500))
                                      : const SizedBox(),
                                )
                              ],
                            )),
                        Container(
                            width: min(max(Get.width / 4.5 - 25, 60), 90),
                            height: min(max(Get.width / 4.5 - 25, 60), 90)
                                    .toDouble() +
                                20.toDouble() +
                                40,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: <Widget>[
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.decelerate,
                                  height: _choice != RoshamboChoices.scissor
                                      ? 20
                                      : 0,
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      _choice == RoshamboChoices.scissor
                                          ? const Color(0xFF0042EC)
                                          : Colors.transparent,
                                    ),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    minimumSize: MaterialStateProperty.all(Size(
                                        50,
                                        min(max(Get.width / 4.5 - 25, 60),
                                            90))),
                                  ),
                                  onPressed: () {
                                    final RoshamboGameRound _round = _rounds
                                        .firstWhere(
                                            (RoshamboGameRound gameRound) =>
                                                gameRound.round ==
                                                currentRoundChange);
                                    final int _roundIndex = _rounds.indexWhere(
                                        (RoshamboGameRound gameRound) =>
                                            gameRound.round ==
                                            currentRoundChange);
                                    final List<RoshamboGameRound> _allRounds =
                                        _rounds;
                                    _round.choice = RoshamboChoices.scissor;
                                    _allRounds[_roundIndex] = _round;
                                    setState(() {
                                      currentRoundChange =
                                          nextRound(currentRoundChange);
                                      _rounds = _allRounds;
                                      _choice = RoshamboChoices.scissor;
                                    });
                                  },
                                  child: SizedBox(
                                    width: min(max(Get.width / 5 - 20, 40), 80),
                                    height:
                                        min(max(Get.width / 5 - 20, 40), 80),
                                    child: SvgPicture.asset(
                                        Assets.iconsScissorIcon,
                                        width: min(
                                            max(Get.width / 5 - 20, 40), 80),
                                        height: min(
                                            max(Get.width / 5 - 20, 40), 80),
                                        color: _choice != RoshamboChoices.paper
                                            ? Colors.grey[200]
                                            : Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: _choice == RoshamboChoices.scissor
                                      ? const Text('Scissor',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500))
                                      : const SizedBox(),
                                )
                              ],
                            ))
                      ],
                    ),
                    Center(
                      child: FirstChoiceBtn(
                          btnText: 'Play',
                          func: () => playGame(),
                          width: Get.width / 3,
                          isDisabled:
                              _rounds.where((RoshamboGameRound gameRound) {
                            return gameRound.choice == RoshamboChoices.unknown;
                          }).isNotEmpty),
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
