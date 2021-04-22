import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:troisplay/components/app_bar.dart';
import 'package:troisplay/components/buttons.dart';
import 'package:troisplay/data/stat_type.dart';
import 'package:troisplay/icons/cup.dart';

class GameResponseScreen extends StatefulWidget {
  const GameResponseScreen({@required this.stat});
  final GameResponse stat;
  @override
  _GameResponseScreenState createState() => _GameResponseScreenState();
}

class _GameResponseScreenState extends State<GameResponseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarEmpty(),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const SizedBox(),
            Container(
              width: Get.width,
              height: Get.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: widget.stat == GameResponse.won ||
                              widget.stat == GameResponse.finish
                          ? const AssetImage('assets/images/stars.png')
                          : widget.stat == GameResponse.lost
                              ? const AssetImage('assets/images/losses.png')
                              : widget.stat == GameResponse.draw
                                  ? const AssetImage(
                                      'assets/images/game_draw.png')
                                  : const AssetImage('assets/images/stars.png'),
                      fit: BoxFit.contain)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  if (widget.stat == GameResponse.won)
                    CustomPaint(
                      painter: CupIcon(),
                      size: Size(Get.width / 3 - 20, Get.width / 3 + 60),
                    )
                  else if (widget.stat == GameResponse.lost)
                    CustomPaint(
                      painter: LossCupIcon(),
                      size: Size(Get.width / 3 - 20, Get.width / 3 + 60),
                    )
                  else if (widget.stat == GameResponse.draw)
                    CustomPaint(
                      painter: DrawCupIcon(),
                      size: Size(Get.width / 3 - 20, Get.width / 3 + 60),
                    )
                  else
                    CustomPaint(
                      painter: CupIcon(),
                      size: Size(Get.width / 3 - 20, Get.width / 3 + 60),
                    ),
                  Text(
                    widget.stat == GameResponse.won
                        ? 'Congratulations,\nYou won this game'
                        : widget.stat == GameResponse.lost
                            ? 'Ooh No,\n Sorry you have lost this game'
                            : widget.stat == GameResponse.draw
                                ? 'Ooh so close,\nYou draw this game'
                                : widget.stat == GameResponse.finish
                                    ? 'Congratulations your move(s) are set,\nWait your the player to match again you'
                                    : '',
                    style: TextStyle(
                        fontSize: Get.width / 16.56,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AltChoiceBtn(
                  btnText: 'Back to Home',
                  width: Get.width / 2 - 30,
                  func: () {
                    Get.offAllNamed('/home');
                  },
                ),
                if (widget.stat != GameResponse.finish)
                  const SizedBox(
                    width: 10,
                  ),
                if (widget.stat != GameResponse.finish)
                  FirstChoiceBtn(
                    btnText: 'View Game Analysis',
                    width: Get.width / 2 - 30,
                    func: () {
                      Get.offAllNamed('/home');
                    },
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
