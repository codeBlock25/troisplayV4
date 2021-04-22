import 'package:troisplay/data/game_type.dart';
import 'package:troisplay/logic/game.dart';

class PlayedGames {
  PlayedGames({
    this.players,
    this.date,
    this.completed,
    this.lock,
    this.sId,
    this.gameType,
    this.moves,
    this.stake,
  });

  PlayedGames.fromJson(Map<String, dynamic> json) {
    players = List.castFrom(json['players'] as List<dynamic>);
    date = json['date'].toString();
    completed = json['completed'] as bool;
    lock = json['lock'] as bool;
    sId = json['_id'].toString();
    gameType = getGameType(json['gameType'] as int);
    if (json['moves'] != null) {
      moves = <Moves>[];
      for (final dynamic move in json['moves'] as List<dynamic>) {
        moves.add(Moves.fromJson(move));
      }
    }
    stake = json['stake'] as int;
  }

  List<String> players;
  String date;
  bool completed;
  bool lock;
  String sId;
  GameType gameType;
  List<Moves> moves;
  int stake;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['players'] = players;
    data['date'] = date;
    data['completed'] = completed;
    data['lock'] = lock;
    data['_id'] = sId;
    data['gameType'] = gameType;
    if (moves != null) {
      data['moves'] = moves.map((Moves v) => v.toJson()).toList();
    }
    data['stake'] = stake;
    return data;
  }
}

class Moves {
  Moves({this.player});
  Moves.fromJson(dynamic json) {
    if (json['player'] != null) {
      player = <Player>[];
      for (final dynamic _player in json['player'] as List<dynamic>) {
        player.add(Player.fromJson(_player as Map<String, dynamic>));
      }
    }
  }
  List<Player> player;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (player != null) {
      data['player'] = player.map((Player v) => v.toJson()).toList();
    }
    return data;
  }
}

class Player {
  Player({this.round, this.choice});

  Player.fromJson(Map<String, dynamic> json) {
    round = json['round'] as int;
    choice = json['choice'] as int;
  }

  int round;
  int choice;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['round'] = round;
    data['choice'] = choice;
    return data;
  }
}
