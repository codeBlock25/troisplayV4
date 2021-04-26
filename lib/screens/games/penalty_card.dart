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
import 'package:troisplay/data/game_record.dart';
import 'package:troisplay/data/game_type.dart';
import 'package:troisplay/data/games.dart';
import 'package:troisplay/data/played_games.dart';
import 'package:troisplay/data/stat_type.dart';
import 'package:troisplay/data/user.dart';
import 'package:troisplay/generated/assets.dart';
import 'package:troisplay/logic/game.dart';
import 'package:troisplay/logic/hint.dart';
import 'package:troisplay/logic/schedule.dart';
import 'package:troisplay/screens/game_play/game_response.dart';

class PenaltyCardGame extends StatefulWidget {
  const PenaltyCardGame({this.isPlayer1 = true, this.stake, this.id = ''});
  final bool isPlayer1;
  final int stake;
  final String id;
  @override
  _PenaltyCardGameState createState() => _PenaltyCardGameState();
}

class _PenaltyCardGameState extends State<PenaltyCardGame> {
  List<PenaltyCardGameRound> _rounds = <PenaltyCardGameRound>[
    PenaltyCardGameRound(
        round: Round.first, choice: PenaltyCardChoices.unknown),
    PenaltyCardGameRound(
        round: Round.second, choice: PenaltyCardChoices.unknown),
    PenaltyCardGameRound(
        round: Round.third, choice: PenaltyCardChoices.unknown),
    PenaltyCardGameRound(
        round: Round.forth, choice: PenaltyCardChoices.unknown),
    PenaltyCardGameRound(
        round: Round.fifth, choice: PenaltyCardChoices.unknown),
  ];
  Round currentRoundChange = Round.first;
  PenaltyCardChoices _choice = PenaltyCardChoices.unknown;
  final Dio _dio = Dio();
  final GetStorage _box = GetStorage();

  Future<void> joinGame() async {
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
        .put('$apiKey/api/game-play/penalty-card/player2',
            data: <String, dynamic>{
              'id': widget?.id ?? 100,
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
        final GameRecord _record =
            GameRecord.fromJson(value.data as Map<String, dynamic>);
        if (_record.winner == PlayerType.playerTwo) {
          await gameLocalNotifier(NotificationModel(
              title: 'Game Completed',
              msg:
                  'The Rock, Paper and Scissor game played by you has been completed and you won.'));
        } else {
          await gameLocalNotifier(NotificationModel(
              title: 'Game Completed',
              msg:
                  'The Rock, Paper and Scissor game played by you has been completed and you lost.'));
        }
        Get.offUntil(
            GetPageRoute<GetPage>(
                page: () => GameResponseScreen(
                      stat: _record.winner == PlayerType.noOne
                          ? GameResponse.draw
                          : _record.winner == PlayerType.playerOne
                              ? GameResponse.lost
                              : _record.winner == PlayerType.playerTwo
                                  ? GameResponse.won
                                  : GameResponse.finish,
                      record: _record.record,
                    ),
                transition: Transition.rightToLeft,
                curve: Curves.easeInOut,
                transitionDuration: const Duration(milliseconds: 400)),
            ModalRoute.withName('/home'));
        return null;
      } catch (e) {
        debugPrint(e.toString());
        Get.snackbar('App Error',
            'Sorry we could not connect to the troisplay server, please check your internet connection and try again.',
            backgroundColor: Colors.red,
            colorText: Colors.white,
            duration: const Duration(seconds: 10),
            dismissDirection: SnackDismissDirection.VERTICAL);
        return null;
      }
    }).catchError((dynamic error) {
      DioError _err;
      if (error.runtimeType == DioError) {
        _err = error as DioError;
      }
      if (_err != null) {
        debugPrint(_err.response.data.toString());
      }
      Get.snackbar('NetWork Error',
          'Sorry we could not connect to the troisplay server, please check your internet connection and try again.',
          backgroundColor: Colors.red,
          colorText: Colors.white,
          duration: const Duration(seconds: 10),
          dismissDirection: SnackDismissDirection.VERTICAL);
    });
  }

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
        .post('$apiKey/api/game-play/penalty-card',
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
        await gameLocalNotifier(NotificationModel(
            title: 'A new game has been added',
            msg: 'A new Penalty Card game has been player by you.'));
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
                      PenaltyCardPlayerChoice(
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
                      PenaltyCardPlayerChoice(
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
                      PenaltyCardPlayerChoice(
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
                      PenaltyCardPlayerChoice(
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
                      PenaltyCardPlayerChoice(
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
                        penaltyCardGameHint(
                            choice:
                                _rounds.firstWhere((PenaltyCardGameRound game) {
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
                            width: min(max(Get.width / 6.9, 40), 80),
                            height:
                                min(max(Get.width / 6.9, 40), 80).toDouble() +
                                    20.toDouble() +
                                    50,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: <Widget>[
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.decelerate,
                                  height: _choice != PenaltyCardChoices.left
                                      ? 20
                                      : 0,
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      _choice == PenaltyCardChoices.left
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
                                    final PenaltyCardGameRound _round =
                                        _rounds.firstWhere(
                                            (PenaltyCardGameRound gameRound) =>
                                                gameRound.round ==
                                                currentRoundChange);
                                    final int _roundIndex = _rounds.indexWhere(
                                        (PenaltyCardGameRound gameRound) =>
                                            gameRound.round ==
                                            currentRoundChange);
                                    final List<PenaltyCardGameRound>
                                        _allRounds = _rounds;
                                    _round.choice = PenaltyCardChoices.left;
                                    _allRounds[_roundIndex] = _round;
                                    setState(() {
                                      currentRoundChange =
                                          nextRound(currentRoundChange);
                                      _rounds = _allRounds;
                                      _choice = PenaltyCardChoices.left;
                                    });
                                  },
                                  child: SizedBox(
                                    width: min(max(Get.width / 5 - 20, 40), 80),
                                    height:
                                        min(max(Get.width / 5 - 20, 40), 80),
                                    child: SvgPicture.asset(
                                        Assets.iconsLeftStrick,
                                        width: min(
                                            max(Get.width / 5 - 20, 40), 80),
                                        height: min(
                                            max(Get.width / 5 - 20, 40), 80),
                                        color:
                                            _choice != PenaltyCardChoices.left
                                                ? Colors.grey[200]
                                                : Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: _choice == PenaltyCardChoices.left
                                      ? Text(
                                          widget.isPlayer1
                                              ? 'Left   Shoot'
                                              : 'Left   Dive',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500))
                                      : const SizedBox(
                                          height: 20,
                                        ),
                                )
                              ],
                            )),
                        Container(
                            width: min(max(Get.width / 6.3, 40), 80),
                            height:
                                min(max(Get.width / 6.3, 40), 80).toDouble() +
                                    20.toDouble() +
                                    50,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: <Widget>[
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.decelerate,
                                  height: _choice != PenaltyCardChoices.right
                                      ? 20
                                      : 0,
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      _choice == PenaltyCardChoices.right
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
                                    final PenaltyCardGameRound _round =
                                        _rounds.firstWhere(
                                            (PenaltyCardGameRound gameRound) =>
                                                gameRound.round ==
                                                currentRoundChange);
                                    final int _roundIndex = _rounds.indexWhere(
                                        (PenaltyCardGameRound gameRound) =>
                                            gameRound.round ==
                                            currentRoundChange);
                                    final List<PenaltyCardGameRound>
                                        _allRounds = _rounds;
                                    _round.choice = PenaltyCardChoices.right;
                                    _allRounds[_roundIndex] = _round;
                                    setState(() {
                                      currentRoundChange =
                                          nextRound(currentRoundChange);
                                      _rounds = _allRounds;
                                      _choice = PenaltyCardChoices.right;
                                    });
                                  },
                                  child: SizedBox(
                                    width: min(max(Get.width / 5 - 20, 40), 80),
                                    height:
                                        min(max(Get.width / 5 - 20, 40), 80),
                                    child: SvgPicture.asset(
                                        Assets.iconsRightStrick,
                                        width: min(
                                            max(Get.width / 5 - 20, 40), 80),
                                        height: min(
                                            max(Get.width / 5 - 20, 40), 80),
                                        color:
                                            _choice != PenaltyCardChoices.right
                                                ? Colors.grey[200]
                                                : Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: _choice == PenaltyCardChoices.right
                                      ? Text(
                                          widget.isPlayer1
                                              ? 'Right Shoot'
                                              : 'Right Dive',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500))
                                      : const SizedBox(
                                          height: 20,
                                        ),
                                )
                              ],
                            )),
                      ],
                    ),
                    Center(
                      child: FirstChoiceBtn(
                          btnText: 'Play',
                          func: () => <void>{
                                if (widget.isPlayer1 == false)
                                  joinGame()
                                else
                                  playGame()
                              },
                          width: Get.width / 3,
                          isDisabled:
                              _rounds.where((PenaltyCardGameRound gameRound) {
                            return gameRound.choice ==
                                PenaltyCardChoices.unknown;
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
