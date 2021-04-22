import 'package:get/get.dart';
import 'package:troisplay/data/player.dart';

class PlayerController extends GetxController {
  Player _player;
  void init(Map<String, dynamic> currentPlayer) {
    _player = Player.fromJson(currentPlayer);
  }

  Player get thisPlayer => _player;
}
