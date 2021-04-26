import 'package:troisplay/data/game_type.dart';

import 'games.dart';

class GameRecord {
  GameRecord({this.winner, this.record});
  GameRecord.fromJson(Map<String, dynamic> json) {
    winner = intToPlayerType(json['winner'] as int);
    if (json['record'] != null) {
      record = <OutComeRecord>[];
      json['record'].forEach((dynamic v) {
        record.add(OutComeRecord.fromJson(v as Map<String, dynamic>));
      });
    }
  }
  PlayerType winner;
  List<OutComeRecord> record;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['winner'] = winner.index;
    if (record != null) {
      data['record'] = record.map((OutComeRecord v) => v.toJson()).toList();
    }
    return data;
  }
}

class OutComeRecord {
  OutComeRecord({this.player1, this.player2, this.winner});

  OutComeRecord.fromJson(Map<String, dynamic> json) {
    player1 = intToGenGameType(json['player1'] as int);
    player2 = intToGenGameType(json['player2'] as int);
    winner = intToPlayerType(json['winner'] as int);
  }
  AllGameType player1;
  AllGameType player2;
  PlayerType winner;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['player1'] = player1;
    data['player2'] = player2;
    data['winner'] = winner;
    return data;
  }
}
