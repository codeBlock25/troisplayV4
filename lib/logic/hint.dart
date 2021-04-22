import 'package:troisplay/data/game_type.dart';

String roshamboGameHint({RoshamboChoices choice, bool isPlayer1 = true}) {
  switch (choice) {
    case RoshamboChoices.rock:
      return isPlayer1
          ? 'Your opponate must pick scissors for you to win this round.'
          : 'Your opponate must have pick scissors for you to win this round.';
      break;
    case RoshamboChoices.scissor:
      return isPlayer1
          ? 'Your opponate must pick paper for you to win this round.'
          : 'Your opponate mus havet pick paper for you to win this round.';
      break;
    case RoshamboChoices.paper:
      return isPlayer1
          ? 'Your opponate must pick rock for you to win this round.'
          : 'Your opponate must have pick rock for you to win this round.';
      break;
    default:
      return 'Set your choices to continue your game play.';
      break;
  }
}

String penaltyCardGameHint({PenaltyCardChoices choice, bool isPlayer1 = true}) {
  switch (choice) {
    case PenaltyCardChoices.left:
      return isPlayer1
          ? 'Your opponate must dive right as a Goal Keeper for you to win this round.'
          : 'Your opponate must have shoot left as a Shoot Taker for you to win this round.';
      break;
    case PenaltyCardChoices.right:
      return isPlayer1
          ? 'Your opponate must dive left as a Goal Keeper for you to win this round.'
          : 'Your opponate must have shoot right as a Shoot Taker for you to win this round.';
      break;
    default:
      return 'Set your choices to continue your game play.';
      break;
  }
}

String guessMasterGameHint({GuessMasterChoices choice, bool isPlayer1 = true}) {
  switch (choice) {
    case GuessMasterChoices.one:
      return isPlayer1
          ? 'Your opponate must pick any other number apart from one for you to win this round.'
          : 'You opponate must have picked one for you to win this round.';
      break;
    case GuessMasterChoices.two:
      return isPlayer1
          ? 'Your opponate must pick any other number apart from two for you to win this round.'
          : 'You opponate must have picked two for you to win this round.';
      break;
    case GuessMasterChoices.three:
      return isPlayer1
          ? 'Your opponate must pick any other number apart from three for you to win this round.'
          : 'You opponate must have picked three for you to win this round.';
      break;
    case GuessMasterChoices.four:
      return isPlayer1
          ? 'Your opponate must pick any other number apart from four for you to win this round.'
          : 'You opponate must have picked four for you to win this round.';
      break;
    case GuessMasterChoices.five:
      return isPlayer1
          ? 'Your opponate must pick any other number apart from five for you to win this round.'
          : 'You opponate must have picked five for you to win this round.';
      break;
    default:
      return 'Set your choices to continue your game play.';
      break;
  }
}
