import 'package:flutter/material.dart';
import 'package:troisplay/data/game_type.dart';

class Game {
  Game({
    @required this.title,
    @required this.name,
    @required this.gameType,
    @required this.minPrice,
    @required this.manual,
    @required this.logo,
    @required this.icon,
  });
  String title;
  String name;
  GameType gameType;
  int minPrice;
  String manual;
  String logo;
  Widget icon;
}

List<Game> availableGames = <Game>[
  Game(
      gameType: GameType.roshambo,
      title: 'Rock, Paper, Scissor',
      name: 'roshambo',
      minPrice: 100,
      manual:
          'A player who decides to play rock will beat another player who has chosen scissors (rock crushes scissors), but will lose to one who has played paper (paper covers rock); a play of paper will lose to a play of scissors (scissors cuts paper). If both players choose the same shape it is a draw.',
      logo: 'assets/icons/rock.png',
      icon: const Icon(Icons.alarm)),
  Game(
      gameType: GameType.penaltyCard,
      title: 'Penalty Card',
      name: 'penalty card',
      minPrice: 100,
      manual:
          'Just as penalty in the game of soccer, involves the taker and goal keeper. Taker aim is to score (choose opposite direction as the goal keeper) while the goal keeper is the catch the ball (go same direction as the taker).',
      logo: 'assets/icons/penalty_card.png',
      icon: const Icon(Icons.alarm)),
  Game(
      gameType: GameType.guessMaster,
      title: 'Guess Master',
      name: 'guess master',
      minPrice: 100,
      manual:
          'Player two has three chances to guess the number player one choose from number 1 one to 5. Player two wins only 50% of the stake value if he get the attempt right at the third trial.',
      logo: 'assets/icons/guess_master.png',
      icon: const Icon(Icons.alarm)),
  Game(
      gameType: GameType.luckyJudge,
      title: 'Lucky Judge',
      name: 'lucky judge',
      minPrice: 100,
      manual:
          'A draw game that is only set by Admin and winner is determined by automatically selection at end of the draw.',
      logo: 'assets/icons/lucky_judge.png',
      icon: const Icon(Icons.alarm)),
];

class RoshamboGameRound {
  RoshamboGameRound({
    @required this.round,
    @required this.choice,
  });
  Round round;
  RoshamboChoices choice;

  Map<String, int> toJson() => <String, int>{
        'round': round.index,
        'choice': choice.index,
      };
}

class PenaltyCardGameRound {
  PenaltyCardGameRound({
    @required this.round,
    @required this.choice,
  });
  Round round;
  PenaltyCardChoices choice;
  Map<String, int> toJson() => <String, int>{
        'round': round.index,
        'choice': choice.index,
      };
}

class GuessMasterGameRound {
  GuessMasterGameRound({
    @required this.round,
    @required this.choice,
  });
  Round round;
  GuessMasterChoices choice;
  Map<String, int> toJson() => <String, int>{
        'round': round.index,
        'choice': choice.index,
      };
}

PlayerType intToPlayerType(int v) {
  if (v == PlayerType.playerOne.index) {
    return PlayerType.playerOne;
  } else if (v == PlayerType.playerTwo.index) {
    return PlayerType.playerTwo;
  } else if (v == PlayerType.playerOthers.index) {
    return PlayerType.playerOthers;
  } else {
    return PlayerType.noOne;
  }
}

AllGameType intToGenGameType(int v) {
  if (v == AllGameType.choice1.index) {
    return AllGameType.choice1;
  } else if (v == AllGameType.choice2.index) {
    return AllGameType.choice2;
  } else if (v == AllGameType.choice3.index) {
    return AllGameType.choice3;
  } else if (v == AllGameType.choice4.index) {
    return AllGameType.choice4;
  } else if (v == AllGameType.choice5.index) {
    return AllGameType.choice5;
  } else if (v == AllGameType.choice6.index) {
    return AllGameType.choice6;
  } else {
    return AllGameType.choice1;
  }
}
