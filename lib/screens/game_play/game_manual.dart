import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:troisplay/components/app_bar.dart';
import 'package:troisplay/components/buttons.dart';
import 'package:troisplay/data/game_type.dart';
import 'package:troisplay/data/games.dart';
import 'package:troisplay/logic/game.dart';
import 'package:troisplay/logic/next_screen.dart';
import 'package:troisplay/screens/game_play/game_picker.dart';

class GameManualScreen extends StatefulWidget {
  const GameManualScreen(
      {@required this.game, @required this.stake, this.isPlayer1 = true});
  final GameType game;
  final int stake;
  final bool isPlayer1;
  @override
  _GameManualScreenState createState() => _GameManualScreenState();
}

class _GameManualScreenState extends State<GameManualScreen> {
  @override
  Widget build(BuildContext context) {
    final Game gamePlay = getGame(widget.game);
    return Scaffold(
      appBar: buildAppBarWithLogo(),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Center(
              child: SizedBox(
                  width: Get.width / 2.5,
                  height: Get.width / 2.5,
                  child:
                      Opacity(opacity: 0.6, child: Image.asset(gamePlay.logo))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                gamePlay.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
              child: Text(
                gamePlay.manual,
                style: const TextStyle(fontSize: 16, color: Color(0xFFC7C7C7)),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: Get.width,
              padding: EdgeInsets.symmetric(
                horizontal: Get.width / 12,
              ),
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  AltChoiceBtn(
                    btnText: 'Back to Games',
                    func: () {
                      // ignore: always_specify_types
                      Navigator.of(context).pushAndRemoveUntil(
                          GetPageRoute<GetPage>(
                            page: () => GamePicker(),
                            transition: Transition.leftToRight,
                            transitionDuration:
                                const Duration(milliseconds: 400),
                            curve: Curves.decelerate,
                          ),
                          ModalRoute.withName('/home'));
                    },
                    width: (Get.width / 2) - (Get.width / 10),
                  ),
                  FirstChoiceBtn(
                    btnText: 'Continue',
                    func: () {
                      continueToGameAsPlayer1(
                          game: widget.game,
                          isPlayer1: widget.isPlayer1,
                          stake: widget.stake,
                          context: context);
                    },
                    width: (Get.width / 2) - (Get.width / 10),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
