import 'package:intl/intl.dart';
import 'package:troisplay/data/game_type.dart';

String toMoney(int amount) {
  final NumberFormat f =
      NumberFormat.currency(locale: 'en_US', symbol: '₦', name: 'Naira');
  return f.format(amount);
}

String toStrictMoney(int amount) {
  final NumberFormat f = NumberFormat.currency(
      locale: 'en_US', symbol: '₦', decimalDigits: 0, name: 'Naira Strict');
  return f.format(amount);
}

int fromMoneytoInt(String money) {
  return double.parse(money.substring(1).replaceAll(RegExp(','), '')).ceil();
}

GameType fromIntToGame(int gameNum) {
  if (gameNum == GameType.roshambo.index) {
    return GameType.roshambo;
  } else if (gameNum == GameType.penaltyCard.index) {
    return GameType.penaltyCard;
  } else if (gameNum == GameType.glorySpin.index) {
    return GameType.glorySpin;
  } else if (gameNum == GameType.guessMaster.index) {
    return GameType.guessMaster;
  } else if (gameNum == GameType.luckyJudge.index) {
    return GameType.luckyJudge;
  } else {
    return GameType.roshambo;
  }
}
