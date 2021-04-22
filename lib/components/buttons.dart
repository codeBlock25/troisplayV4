import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:troisplay/data/game_type.dart';
import 'package:troisplay/data/games.dart';
import 'package:troisplay/icons/player.dart';
import 'package:troisplay/logic/game.dart';

class FirstChoiceBtn extends StatelessWidget {
  // ignore: avoid_unused_constructor_parameters
  FirstChoiceBtn(
      {@required this.btnText,
      this.func,
      this.width,
      this.small = false,
      this.isDisabled = false})
      : super(key: UniqueKey());
  final String btnText;
  final double width;
  final bool small;
  final bool isDisabled;
  final void Function() func;
  void defaultFunc() {
    debugPrint('working btn');
  }

  @override
  Widget build(BuildContext context) {
    final double finalWidth = width ?? Get.width / 2;
    final void Function() finalFunc = func ?? defaultFunc;
    return SizedBox(
      width: finalWidth,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.resolveWith((Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return const Color(0xFF0042EC);
              }
              return const Color(0xFF0042EC);
            }),
            minimumSize:
                MaterialStateProperty.all(Size(finalWidth, small ? 40 : 50)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)))),
        onPressed: isDisabled ? null : finalFunc,
        child: Text(btnText,
            style: TextStyle(
                color: isDisabled
                    ? const Color(0xFFFFFFFF).withOpacity(0.5)
                    : Colors.white,
                fontSize: 18),
            textAlign: TextAlign.center),
      ),
    );
  }
}

class AltChoiceBtn extends StatelessWidget {
  // ignore: avoid_unused_constructor_parameters
  AltChoiceBtn({Key key, @required this.btnText, this.func, this.width})
      : super(key: UniqueKey());
  final String btnText;
  final double width;
  final void Function() func;
  Function(void) defaultFunc() {
    debugPrint('working btn');
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final double finalWidth = width ?? Get.width / 2;
    final void Function() finalFunc = func ?? defaultFunc;
    return SizedBox(
      width: finalWidth,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.resolveWith((Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return const Color(0xFF0042EC);
              }
              return const Color(0xFF0042EC);
            }),
            minimumSize: MaterialStateProperty.all(Size(finalWidth, 50)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)))),
        onPressed: () => finalFunc(),
        child: Text(btnText,
            style: const TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center),
      ),
    );
  }
}

class GlorySpinBtn extends StatelessWidget {
  const GlorySpinBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: FloatingActionButton(
        onPressed: () {},
        isExtended: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Text('10:00:00 to spin',
                  style: TextStyle(color: Color(0xFFFFB800), fontSize: 12),
                  textAlign: TextAlign.center),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CustomPaint(
                    painter: Player1Icon(),
                    size: const Size(22, 22),
                  ),
                  const Text(
                    'Glory Spin',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FieldBtn extends StatelessWidget {
  const FieldBtn(
      {Key key, @required this.label, @required this.icon, @required this.func})
      : super(key: key);

  final String label;
  final Widget icon;
  final void Function() func;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: Get.width / 4),
      child: Column(
        children: <Widget>[
          TextButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF0042EC)),
                minimumSize: MaterialStateProperty.all(const Size(50.0, 50.0)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)))),
            onPressed: () => func(),
            child: icon,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(label,
              style: const TextStyle(
                  color: Color(0xFF595959),
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class RoshamboPlayerChoice extends StatelessWidget {
  const RoshamboPlayerChoice({
    Key key,
    @required this.gamePlay,
    @required this.active,
    @required this.func,
    @required this.round,
    @required this.choice,
  }) : super(key: key);

  final Game gamePlay;
  final bool active;
  final void Function() func;
  final Round round;
  final RoshamboChoices choice;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: min(max(Get.width / 6.9, 50), 90),
        height: min(max(Get.width / 6.9, 50), 90).toDouble() + 35.toDouble(),
        child: Column(
          children: <Widget>[
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color(0xFFC4C4C4).withOpacity(0.31)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: !active
                                ? Colors.transparent
                                : const Color(0xFF0042EC),
                            width: active ? 2 : 0)),
                  )),
              onPressed: () => func(),
              child: SizedBox(
                  width: min(max(Get.width / 6.9, 40), 80),
                  height: min(max(Get.width / 6.9, 40), 80),
                  child: choice == RoshamboChoices.unknown
                      ? const SizedBox()
                      : getChoiceIcon(
                          choiceR: choice, game: GameType.roshambo)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                  round == Round.first
                      ? '1st'
                      : round == Round.second
                          ? '2nd'
                          : round == Round.third
                              ? '3rd'
                              : round == Round.forth
                                  ? '4th'
                                  : round == Round.fifth
                                      ? '5th'
                                      : '',
                  textAlign: TextAlign.center),
            )
          ],
        ));
  }
}

class PenaltyCardPlayerChoice extends StatelessWidget {
  const PenaltyCardPlayerChoice({
    Key key,
    @required this.gamePlay,
    @required this.active,
    @required this.func,
    @required this.round,
    @required this.choice,
  }) : super(key: key);

  final Game gamePlay;
  final bool active;
  final Function() func;
  final Round round;
  final PenaltyCardChoices choice;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: min(max(Get.width / 6.9, 50), 90),
        height: min(max(Get.width / 6.9, 50), 90).toDouble() + 35.toDouble(),
        child: Column(
          children: <Widget>[
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color(0xFFC4C4C4).withOpacity(0.31)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: !active
                                ? Colors.transparent
                                : const Color(0xFF0042EC),
                            width: active ? 2 : 0)),
                  )),
              onPressed: () => func(),
              child: SizedBox(
                width: min(max(Get.width / 6.9, 40), 80),
                height: min(max(Get.width / 6.9, 40), 80),
                child: choice == PenaltyCardChoices.unknown
                    ? const SizedBox()
                    : getChoiceIcon(
                        choiceP: choice, game: GameType.penaltyCard),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                  round == Round.first
                      ? '1st'
                      : round == Round.second
                          ? '2nd'
                          : round == Round.third
                              ? '3rd'
                              : round == Round.forth
                                  ? '4th'
                                  : round == Round.fifth
                                      ? '5th'
                                      : '',
                  textAlign: TextAlign.center),
            )
          ],
        ));
  }
}

class GuessMasterPlayerChoice extends StatelessWidget {
  const GuessMasterPlayerChoice({
    Key key,
    @required this.gamePlay,
    @required this.active,
    @required this.func,
    @required this.round,
    @required this.choice,
  }) : super(key: key);

  final Game gamePlay;
  final bool active;
  final Function() func;
  final Round round;
  final GuessMasterChoices choice;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: min(max(Get.width / 6, 65), 100),
        height: min(max(Get.width / 6, 70), 100).toDouble() + 35.toDouble(),
        child: Column(
          children: <Widget>[
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color(0xFFC4C4C4).withOpacity(0.31)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: !active
                                ? Colors.transparent
                                : const Color(0xFF0042EC),
                            width: active ? 2 : 0)),
                  )),
              onPressed: () => func(),
              child: SizedBox(
                width: min(max(Get.width / 6.9, 40), 80),
                height: min(max(Get.width / 6.9, 40), 80),
                child: Center(
                  child: choice == GuessMasterChoices.unknown
                      ? const SizedBox()
                      : Text(
                          (choice.index + 1).toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40),
                        ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: const Text(
                'Guessed Number',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ));
  }
}
