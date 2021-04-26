import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:troisplay/data/game_type.dart';
import 'package:troisplay/screens/game_play/game_picker.dart';
import 'package:troisplay/screens/games/guess_master.dart';
import 'package:troisplay/screens/games/lucky_judge.dart';
import 'package:troisplay/screens/games/penalty_card.dart';
import 'package:troisplay/screens/games/roshambo.dart';

void continueToGameAsPlayer1(
    {GameType game,
    bool isPlayer1 = true,
    int stake = 100,
    String id = '',
    BuildContext context}) {
  switch (game) {
    case GameType.roshambo:
      Navigator.of(context).pushAndRemoveUntil(
          GetPageRoute<GetPage>(
            page: () => RoshamboGame(
              isPlayer1: isPlayer1,
              stake: stake,
              id: id,
            ),
            transition: Transition.rightToLeft,
            curve: Curves.decelerate,
            transitionDuration: const Duration(milliseconds: 400),
          ),
          ModalRoute.withName('/game_picker'));
      break;
    case GameType.penaltyCard:
      Navigator.of(context).pushAndRemoveUntil(
          GetPageRoute<GetPage>(
            page: () => PenaltyCardGame(
              isPlayer1: isPlayer1,
              stake: stake,
              id: id,
            ),
            transition: Transition.rightToLeft,
            curve: Curves.decelerate,
            transitionDuration: const Duration(milliseconds: 400),
          ),
          ModalRoute.withName('/game_picker'));
      break;
    case GameType.guessMaster:
      Navigator.of(context).pushAndRemoveUntil(
          GetPageRoute<GetPage>(
            page: () => GuessMasterGame(
              isPlayer1: isPlayer1,
              stake: stake,
              id: id,
            ),
            transition: Transition.rightToLeft,
            curve: Curves.decelerate,
            transitionDuration: const Duration(milliseconds: 400),
          ),
          ModalRoute.withName('/game_picker'));
      break;
    case GameType.luckyJudge:
      Navigator.of(context).pushAndRemoveUntil(
          GetPageRoute<GetPage>(
            page: () => LuckyJudgeGame(),
            transition: Transition.rightToLeft,
            curve: Curves.decelerate,
            transitionDuration: const Duration(milliseconds: 400),
          ),
          ModalRoute.withName('/game_picker'));
      break;
    default:
      Get.offUntil(GetPageRoute<GetPage>(page: () => GamePicker()),
          ModalRoute.withName('/home'));
      break;
  }
}
