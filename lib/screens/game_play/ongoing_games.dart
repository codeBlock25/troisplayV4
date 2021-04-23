import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shimmer/shimmer.dart';
import 'package:troisplay/components/app_bar.dart';
import 'package:troisplay/components/game.dart';
import 'package:troisplay/components/slide_up_panel_wrapper.dart';
import 'package:troisplay/data/played_games.dart';
import 'package:troisplay/generated/assets.dart';
import 'package:troisplay/logic/game.dart';
import 'package:troisplay/logic/get_player.dart';

class OnGoingGamesScreen extends StatefulWidget {
  @override
  _OnGoingGamesScreenState createState() => _OnGoingGamesScreenState();
}

class _OnGoingGamesScreenState extends State<OnGoingGamesScreen> {
  bool loading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithLogo(),
      body: SlideUpWrapper(
        body: RefreshIndicator(
          onRefresh: () async {
            setState(() {
              loading = true;
            });
            return Timer.periodic(const Duration(milliseconds: 500),
                (Timer timer) {
              if (!loading) {
                timer.cancel();
              }
            });
          },
          child: FutureBuilder<List<Map<String, dynamic>>>(
              future: getMyGames(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<Map<String, dynamic>>> snapShot) {
                if (snapShot.connectionState == ConnectionState.done &&
                    loading) {
                  loading = false;
                }
                if (snapShot.connectionState == ConnectionState.done &&
                    snapShot.hasData) {
                  return OngoingGameBody(
                    games: snapShot.data,
                  );
                }
                return Center(
                  child: SizedBox(
                    width: Get.width - 30,
                    height: Get.height - 30,
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey[600].withOpacity(0.4),
                      highlightColor: Colors.grey[600].withOpacity(0.6),
                      child: Image.asset(
                        Assets.imagesHomeLoadimage,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class OngoingGameBody extends StatelessWidget {
  const OngoingGameBody({
    Key key,
    @required this.games,
  }) : super(key: key);

  final List<Map<String, dynamic>> games;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: Get.height,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Available',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                )),
            Padding(
              padding: EdgeInsets.only(right: Get.width / 10),
              child: const Text('Ongoing Games',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  )),
            ),
            if (games.isEmpty)
              SizedBox(
                width: Get.width,
                height: Get.height - 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Ionicons.alert_circle_outline,
                      size: Get.width / 5.5,
                      color: const Color(0xFFF0B821),
                    ),
                    Text(
                      'No games available,\n\n Pull to Refresh',
                      style: TextStyle(
                        fontSize: Get.width / 23,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Icon(
                      Ionicons.albums_outline,
                      size: Get.width / 11.5,
                      color: const Color(0xFF0042EC),
                    )
                  ],
                ),
              )
            else
              Center(
                child: Wrap(
                  spacing: 20,
                  alignment: WrapAlignment.spaceBetween,
                  runAlignment: WrapAlignment.spaceBetween,
                  children:
                      List<GameOp2View>.generate(games.length, (int index) {
                    final PlayedGames _playedGame =
                        PlayedGames.fromJson(games[index]);
                    return GameOp2View(
                      gamePlay: getGame(_playedGame.gameType),
                      game: _playedGame.gameType,
                      price: _playedGame.stake + 100,
                      stake: _playedGame.stake,
                      id: _playedGame.sId,
                      isOngoing: true,
                    );
                  }),
                ),
              ),
            const SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
