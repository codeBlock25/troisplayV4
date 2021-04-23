import 'package:flutter/material.dart';
import 'package:troisplay/logic/convert.dart';
import 'package:troisplay/extensions/strings.dart';

class UserDisplayPanel extends StatelessWidget {
  const UserDisplayPanel({
    Key key,
    @required this.username,
    @required this.balance,
    @required this.profilePic,
  }) : super(key: key);
  final String username;
  final int balance;
  final String profilePic;
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: _size.width - (_size.width / 8),
        height: _size.height / 4,
        margin: EdgeInsets.only(left: 20, right: 20, top: _size.width / 3),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        constraints: BoxConstraints(
            maxWidth: _size.width,
            minWidth: 330,
            minHeight: 210,
            maxHeight: _size.height),
        key: const ValueKey<String>('circle-avatar'),
        decoration: BoxDecoration(
            color: const Color(0xFF151515),
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('assets/images/panelBG.png'),
              fit: BoxFit.cover,
            )),
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: <Widget>[
            Positioned(
              top: -(_size.width / 2.2) / 2,
              left: (_size.width / 2.2) / 2 - 20,
              child: Container(
                width: _size.width / 2.2,
                height: _size.width / 2.2,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    color: const Color(0xFF0042EC),
                    borderRadius: BorderRadius.circular(_size.width / 3),
                    image: DecorationImage(
                        image: AssetImage(profilePic), fit: BoxFit.cover)),
              ),
            ),
            Positioned.fill(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: (_size.width / 2.2) / 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              'username',
                              style: TextStyle(
                                  color: Color(0xFF8E8E8E),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              username.capitalize,
                              key: const ValueKey<String>('username'),
                              style: const TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            const Text(
                              'Available Balance',
                              style: TextStyle(
                                  color: Color(0xFF8E8E8E),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              toMoney(balance),
                              key: const ValueKey<String>('balance'),
                              style: const TextStyle(
                                  color: Color(0xFF0042EC),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF008960)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            minimumSize:
                                MaterialStateProperty.all(const Size(80, 45)),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(10))),
                        onPressed: () {},
                        child: const Text(
                          'Fund',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFEC8E00)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            minimumSize:
                                MaterialStateProperty.all(const Size(80, 45))),
                        onPressed: () {},
                        child: const Text(
                          'Referral',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFA000EC)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            minimumSize:
                                MaterialStateProperty.all(const Size(80, 45))),
                        onPressed: () {},
                        child: const Text(
                          'Withdrawal',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
