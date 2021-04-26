import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:troisplay/controllers/player.dart';
import 'package:troisplay/controllers/wallet.dart';
import 'package:troisplay/data/user.dart';
import 'package:get/get.dart';
import 'package:troisplay/logic/convert.dart';

class SlideUpWrapper extends StatefulWidget {
  const SlideUpWrapper({Key key, @required this.body}) : super(key: key);

  final Widget body;
  @override
  _SlideUpWrapperState createState() => _SlideUpWrapperState();
}

class _SlideUpWrapperState extends State<SlideUpWrapper> {
  final GetStorage _box = GetStorage();
  User _user;
  final PlayerController _playerController = Get.put(PlayerController());
  final WalletController _walletController = Get.put(WalletController());
  @override
  void initState() {
    super.initState();
    setState(() {
      _user = User.fromJson(_box.read('user_account'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
        maxHeight: Get.height - (Get.height / 3),
        color: Colors.transparent,
        header: Container(
          height: 100,
          width: Get.width,
          decoration: const BoxDecoration(
              color: Color(0xFF0042EC),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  width: Get.width / 3,
                  height: 10,
                  margin: const EdgeInsets.only(top: 7),
                  decoration: BoxDecoration(
                      color: const Color(0xFF7497F1),
                      borderRadius: BorderRadius.circular(10))),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'username',
                            style: TextStyle(
                                color: Color(0xFFA1BCFF),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            (_playerController.thisPlayer?.username ?? '')
                                .capitalize,
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
                                color: Color(0xFFA1BCFF),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            toMoney(_walletController.myWallet.balance ?? 0),
                            key: const ValueKey<String>('balance'),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'on going games: ',
                      style: TextStyle(
                        color: Color(0xFFACC3FE),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                        width: 25,
                        height: 25,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color(0xFF00E04C),
                            borderRadius: BorderRadius.circular(40)),
                        child: const Text('0',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            )))
                  ],
                ),
              )
            ],
          ),
        ),
        panel: Container(
          width: Get.width,
          height: Get.height - (Get.height / 3) - 100,
          padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
          decoration: const BoxDecoration(
              color: Color(0xFF0042EC),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 14),
                  child: Text(
                    'Full Name',
                    style: TextStyle(
                        color: Color(0xFFA1BCFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    (_user?.fullName ?? '').capitalize,
                    style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 14),
                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                        color: Color(0xFFA1BCFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    _user?.phoneNumber ?? '',
                    style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 14),
                  child: Text(
                    'Email',
                    style: TextStyle(
                        color: Color(0xFFA1BCFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    _playerController.thisPlayer?.email ?? '',
                    style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 14),
                  child: Text(
                    'Game Location',
                    style: TextStyle(
                        color: Color(0xFFA1BCFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    '${_playerController.thisPlayer.state ?? ''} ${_playerController.thisPlayer?.country ?? ''}'
                        .capitalize,
                    style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Text(
                    'Total Games Played in (${DateTime.now().day})',
                    style: const TextStyle(
                        color: Color(0xFFA1BCFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '0',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Text(
                    'Total Games Won in (${DateTime.now().day})',
                    style: const TextStyle(
                        color: Color(0xFFA1BCFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '0',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Text(
                    'Total Games Lost in (${DateTime.now().day})',
                    style: const TextStyle(
                        color: Color(0xFFA1BCFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '0',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  child: Container(
                    width: max(Get.width / 2, 200),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(
                              Size(max(Get.width / 2, 200), 50)),
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF6E93F4)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(horizontal: 20)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        child: Row(
                          children: const <Widget>[
                            Text('Share Referral Link',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                )),
                            Icon(
                              Ionicons.share_social_outline,
                              color: Color(0xFF0042EC),
                              size: 25,
                            ),
                          ],
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF215BEE),
                                borderRadius: BorderRadius.circular(50)),
                            child: IconButton(
                                icon: const Icon(Icons.people_alt_outlined,
                                    color: Colors.white),
                                color: const Color(0xFF215BEE),
                                onPressed: () {}),
                          ),
                          const Text('My referrals',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEEEEEE))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF215BEE),
                                borderRadius: BorderRadius.circular(50)),
                            child: IconButton(
                                icon: const Icon(Icons.sports_esports_outlined,
                                    color: Colors.white),
                                color: const Color(0xFF215BEE),
                                onPressed: () {}),
                          ),
                          const Text('My games',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEEEEEE))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF215BEE),
                                borderRadius: BorderRadius.circular(50)),
                            child: IconButton(
                                icon: const Icon(Ionicons.refresh,
                                    color: Colors.white),
                                color: const Color(0xFF215BEE),
                                onPressed: () {}),
                          ),
                          const Text('Game Record',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFEEEEEE))),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
        body: widget.body);
  }
}
