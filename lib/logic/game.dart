import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:troisplay/data/game_type.dart';
import 'package:troisplay/data/games.dart';
import 'package:troisplay/generated/assets.dart';
import 'package:troisplay/icons/roshambo_gestures.dart';
import 'package:troisplay/screens/games/guess_master.dart';
import 'package:troisplay/screens/games/lucky_judge.dart';
import 'package:troisplay/screens/games/penalty_card.dart';
import 'package:troisplay/screens/games/roshambo.dart';

Game getGame(GameType game) {
  return availableGames.firstWhere((Game gamePlay) {
        return gamePlay.gameType == game;
      }) ??
      availableGames[0];
}

GameType getGameType(int game) {
  return availableGames.firstWhere((Game gamePlay) {
        return gamePlay.gameType.index == game;
      }).gameType ??
      availableGames[0].gameType;
}

Widget getChoiceIcon({
  RoshamboChoices choiceR,
  PenaltyCardChoices choiceP,
  @required GameType game,
  double width,
  double height,
}) {
  if (game == GameType.roshambo) {
    switch (choiceR) {
      case RoshamboChoices.rock:
        return SizedBox(
            width: min(max(Get.width / 5 - 20, 40), 80),
            height: min(max(Get.width / 5 - 20, 40), 80),
            child: SvgPicture.asset(Assets.iconsRockIcon,
                width: min(max(Get.width / 5 - 20, 40), 80),
                height: min(max(Get.width / 5 - 20, 40), 80),
                color: Colors.white));
        break;
      case RoshamboChoices.paper:
        return SizedBox(
            width: min(max(Get.width / 5 - 20, 40), 80),
            height: min(max(Get.width / 5 - 20, 40), 80),
            child: SvgPicture.asset(Assets.iconsPaperIcon,
                width: min(max(Get.width / 5 - 20, 40), 80),
                height: min(max(Get.width / 5 - 20, 40), 80),
                color: Colors.white));
        break;
      case RoshamboChoices.scissor:
        return SizedBox(
            width: min(max(Get.width / 5 - 20, 40), 80),
            height: min(max(Get.width / 5 - 20, 40), 80),
            child: SvgPicture.asset(Assets.iconsScissorIcon,
                width: min(max(Get.width / 5 - 20, 40), 80),
                height: min(max(Get.width / 5 - 20, 40), 80),
                color: Colors.white));
        break;
      case RoshamboChoices.unknown:
        return SizedBox(
            width: min(max(Get.width / 5 - 20, 40), 80),
            height: min(max(Get.width / 5 - 20, 40), 80),
            child: SvgPicture.asset(Assets.iconsRockIcon,
                width: min(max(Get.width / 5 - 20, 40), 80),
                height: min(max(Get.width / 5 - 20, 40), 80),
                color: Colors.white));

        break;
      default:
        return SizedBox(
            width: min(max(Get.width / 5 - 20, 40), 80),
            height: min(max(Get.width / 5 - 20, 40), 80),
            child: SvgPicture.asset(Assets.iconsRockIcon,
                width: min(max(Get.width / 5 - 20, 40), 80),
                height: min(max(Get.width / 5 - 20, 40), 80),
                color: Colors.white));
    }
  } else if (game == GameType.penaltyCard) {
    switch (choiceP) {
      case PenaltyCardChoices.left:
        return SizedBox(
            width: min(max(Get.width / 5 - 20, 40), 80),
            height: min(max(Get.width / 5 - 20, 40), 80),
            child: SvgPicture.asset(Assets.iconsLeftStrick,
                width: min(max(Get.width / 5 - 20, 40), 80),
                height: min(max(Get.width / 5 - 20, 40), 80),
                color: Colors.white));
        break;
      case PenaltyCardChoices.right:
        return SizedBox(
            width: min(max(Get.width / 5 - 20, 40), 80),
            height: min(max(Get.width / 5 - 20, 40), 80),
            child: SvgPicture.asset(Assets.iconsRightStrick,
                width: min(max(Get.width / 5 - 20, 40), 80),
                height: min(max(Get.width / 5 - 20, 40), 80),
                color: Colors.white));
        break;
      case PenaltyCardChoices.unknown:
        return SizedBox(
            width: min(max(Get.width / 5 - 20, 40), 80),
            height: min(max(Get.width / 5 - 20, 40), 80),
            child: SvgPicture.asset(Assets.iconsLeftStrick,
                width: min(max(Get.width / 5 - 20, 40), 80),
                height: min(max(Get.width / 5 - 20, 40), 80),
                color: Colors.white));

        break;
      default:
        return SizedBox(
            width: min(max(Get.width / 5 - 20, 40), 80),
            height: min(max(Get.width / 5 - 20, 40), 80),
            child: SvgPicture.asset(Assets.iconsLeftStrick,
                width: min(max(Get.width / 5 - 20, 40), 80),
                height: min(max(Get.width / 5 - 20, 40), 80),
                color: Colors.white));
    }
  } else {
    return CustomPaint(
      painter: RockMoveIcon(),
      size: Size(
        width ?? min(max(Get.width / 5 - 20, 40), 80),
        height ?? min(max(Get.width / 5 - 20, 40), 80),
      ),
    );
  }
}

GuessMasterChoices returnGuessMasterChoice(int i) {
  switch (i) {
    case 0:
      return GuessMasterChoices.one;
      break;
    case 1:
      return GuessMasterChoices.two;
      break;
    case 2:
      return GuessMasterChoices.three;
      break;
    case 3:
      return GuessMasterChoices.four;
      break;
    case 4:
      return GuessMasterChoices.five;
      break;
    default:
      return GuessMasterChoices.unknown;
  }
}

String returnGuessMasterChoiceInWords(int i) {
  switch (i) {
    case 0:
      return 'One';
      break;
    case 1:
      return 'Two';
      break;
    case 2:
      return 'Three';
      break;
    case 3:
      return 'Four';
      break;
    case 4:
      return 'Five';
      break;
    default:
      return 'Unknown';
  }
}

String returnGameName(GameType game) {
  switch (game) {
    case GameType.roshambo:
      return 'Rock, Paper, Scissor';
    case GameType.penaltyCard:
      return 'Penalty Card';
    case GameType.guessMaster:
      return 'Guess Master';
    case GameType.luckyJudge:
      return 'Lucky Judge';
    case GameType.glorySpin:
      return 'Glory Spin';
      break;
    default:
      return '';
  }
}

Future<GetPageRoute<Widget>> goToGamePlay(
    {GameType game, bool isPlayer1 = false}) {
  switch (game) {
    case GameType.roshambo:
      return Get.to(
          () => RoshamboGame(
                isPlayer1: isPlayer1,
              ),
          transition: Transition.rightToLeft,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 400));
      break;
    case GameType.penaltyCard:
      return Get.to(
          () => PenaltyCardGame(
                isPlayer1: isPlayer1,
              ),
          transition: Transition.rightToLeft,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 400));
      break;
    case GameType.guessMaster:
      return Get.to(() => GuessMasterGame(isPlayer1: isPlayer1, stake: 100),
          transition: Transition.rightToLeft,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 400));
      break;
    case GameType.glorySpin:
      return Get.to(
          () => RoshamboGame(
                isPlayer1: isPlayer1,
              ),
          transition: Transition.rightToLeft,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 400));
      break;
    case GameType.luckyJudge:
      return Get.to(() => LuckyJudgeGame(),
          transition: Transition.rightToLeft,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 400));
      break;
    default:
      return Get.to(
          () => RoshamboGame(
                isPlayer1: isPlayer1,
              ),
          transition: Transition.rightToLeft,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 400));
      break;
  }
}

Round nextRound(Round currentRound) {
  switch (currentRound) {
    case Round.first:
      return Round.second;
    case Round.second:
      return Round.third;
    case Round.third:
      return Round.forth;
    case Round.fifth:
      return Round.fifth;
      break;
    default:
      return Round.fifth;
  }
}
