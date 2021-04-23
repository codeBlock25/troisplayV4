import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:troisplay/components/app_bar.dart';
import 'package:troisplay/components/game.dart';
import 'package:troisplay/components/slide_up_panel_Wrapper.dart';
import 'package:troisplay/data/game_type.dart';

class GamePicker extends StatefulWidget {
  @override
  _GamePickerState createState() => _GamePickerState();
}

class _GamePickerState extends State<GamePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithLogo(),
      body: SlideUpWrapper(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: Get.width,
          height: Get.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Available',
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFFF9F9F9),
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Games',
                style: TextStyle(
                    fontSize: 40,
                    color: Color(0xFFF9F9F9),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          GameOpView(
                            game: GameType.roshambo,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GameOpView(
                            game: GameType.penaltyCard,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          GameOpView(
                            game: GameType.guessMaster,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GameOpView(game: GameType.luckyJudge),
                        ],
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
