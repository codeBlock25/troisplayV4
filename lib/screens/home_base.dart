import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shimmer/shimmer.dart';
import 'package:troisplay/components/app_bar.dart';
import 'package:troisplay/components/buttons.dart';
import 'package:troisplay/controllers/player.dart';
import 'package:troisplay/controllers/wallet.dart';
import 'package:troisplay/generated/assets.dart';
import 'package:troisplay/logic/convert.dart';
import 'package:troisplay/logic/get_player.dart';
import 'package:troisplay/screens/home/body.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_paystack/flutter_paystack.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GetStorage _box = GetStorage();
  final PlayerController _playerController = Get.put(PlayerController());
  final WalletController _walletController = Get.put(WalletController());
  bool isNavOpen = false;
  int exitTrial = 0;
  String publicKey = '[YOUR_PAYSTACK_PUBLIC_KEY]';

  @override
  void initState() {
    super.initState();
    PaystackPlugin.initialize(publicKey: publicKey);
  }

  @override
  Widget build(BuildContext context) {
    final EdgeInsets _p = MediaQuery.of(context).padding;
    return WillPopScope(
      onWillPop: () async {
        if (isNavOpen == true) {
          setState(() {
            isNavOpen = false;
          });
          return false;
        } else if (exitTrial < 2) {
          Fluttertoast.showToast(
              msg: 'Tap again to exit the application',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.grey[800],
              textColor: Colors.white,
              fontSize: 16.0);
          exitTrial += 1;
          Future<void>.delayed(const Duration(seconds: 2), () {
            exitTrial = 0;
          });
          return false;
        } else if (exitTrial >= 2) {
          exit(0);
        } else {
          return false;
        }
      },
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            LiveHomeBody(
                updateNavStat: () => <void>{
                      setState(() => <void>{isNavOpen = !isNavOpen})
                    }),
            Positioned.fill(
              child: IgnorePointer(
                ignoring: !isNavOpen,
                child: GestureDetector(
                  onTap: () => <void>{
                    setState(() => <void>{isNavOpen = !isNavOpen})
                  },
                  child: AnimatedContainer(
                    width: Get.width,
                    height: Get.height,
                    duration: const Duration(milliseconds: 350),
                    color: isNavOpen
                        ? Colors.black.withOpacity(0.69)
                        : Colors.transparent,
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
                duration: const Duration(milliseconds: 400),
                curve: Curves.decelerate,
                top: 0,
                left: isNavOpen ? 0 : -Get.width,
                child: Container(
                  width: min(max(Get.width / 1.27, 300), 500),
                  height: Get.height,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: Color(0xFF0042EC),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20 + _p.top),
                      SizedBox(
                          width: Get.width / 2.7,
                          child: Image.asset(
                            'assets/brand/logo_plain.png',
                            fit: BoxFit.contain,
                          )),
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
                                    (_playerController.thisPlayer?.username ??
                                            '')
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
                                    'Balance',
                                    style: TextStyle(
                                        color: Color(0xFFA1BCFF),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    toMoney(
                                        _walletController.myWallet?.balance ??
                                            0),
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
                      Container(
                        width: min(max(Get.width / 1.57, 250), 400),
                        height: 2,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        color: Colors.white.withOpacity(0.31),
                      ),
                      Expanded(
                        child: Material(
                          color: const Color(0xFF0042EC),
                          child: SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                MenuTile(
                                  func: () {
                                    setState(() {
                                      isNavOpen = !isNavOpen;
                                    });
                                    Get.toNamed('/ongoing_games');
                                  },
                                  leadingIcon: const Icon(
                                    Icons.sports_esports_outlined,
                                    color: Colors.white,
                                  ),
                                  titleText: 'My going games',
                                ),
                                MenuTile(
                                  func: () {
                                    setState(() {
                                      isNavOpen = !isNavOpen;
                                    });
                                    Get.toNamed('/settings/account');
                                  },
                                  leadingIcon: const Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                  titleText: 'My Account Information',
                                ),
                                MenuTile(
                                  func: () {
                                    setState(() {
                                      isNavOpen = !isNavOpen;
                                    });
                                    Get.toNamed('/my_record');
                                  },
                                  leadingIcon: const Icon(
                                    Ionicons.refresh_circle_outline,
                                    color: Colors.white,
                                  ),
                                  titleText: 'My game record',
                                ),
                                MenuTile(
                                  func: () async {
                                    await launch('https://troisplay.com');
                                  },
                                  leadingIcon: const Icon(
                                    Icons.language_outlined,
                                    color: Colors.white,
                                  ),
                                  titleText: 'Got to site',
                                ),
                                MenuTile(
                                  func: () async {
                                    await launch(
                                        'https://troisplay.com/support');
                                  },
                                  leadingIcon: const Icon(
                                    Ionicons.help_buoy,
                                    color: Colors.white,
                                  ),
                                  titleText: 'Quick Support',
                                ),
                                MenuTile(
                                  func: () {
                                    setState(() {
                                      isNavOpen = !isNavOpen;
                                    });
                                    Get.toNamed('/vtu');
                                  },
                                  leadingIcon: const Icon(
                                    Icons.money,
                                    color: Colors.white,
                                  ),
                                  titleText: 'VTU',
                                ),
                                MenuTile(
                                  func: () {
                                    setState(() {
                                      isNavOpen = !isNavOpen;
                                    });
                                    Get.toNamed('my_transaction');
                                  },
                                  leadingIcon: const Icon(
                                    Icons.account_balance_wallet,
                                    color: Colors.white,
                                  ),
                                  titleText: 'My Wallet',
                                ),
                                MenuTile(
                                  func: () {
                                    setState(() {
                                      isNavOpen = !isNavOpen;
                                    });
                                    Get.toNamed('my_transaction');
                                  },
                                  leadingIcon: const Icon(
                                    Icons.account_balance,
                                    color: Colors.white,
                                  ),
                                  titleText: 'My Transactions',
                                ),
                                MenuTile(
                                  func: () {
                                    setState(() {
                                      isNavOpen = !isNavOpen;
                                    });
                                    Get.toNamed('my_transaction');
                                  },
                                  leadingIcon: const Icon(
                                    Ionicons.pie_chart,
                                    color: Colors.white,
                                  ),
                                  titleText: 'Game Progress Chart',
                                ),
                                MenuTile(
                                  func: () {
                                    setState(() {
                                      isNavOpen = !isNavOpen;
                                    });
                                    Get.toNamed('referral');
                                  },
                                  leadingIcon: const Icon(
                                    Icons.people,
                                    color: Colors.white,
                                  ),
                                  titleText: 'My Referrals',
                                ),
                                MenuTile(
                                  func: () {
                                    setState(() {
                                      isNavOpen = !isNavOpen;
                                    });
                                  },
                                  leadingIcon: const Icon(
                                    Ionicons.card_outline,
                                    color: Colors.white,
                                  ),
                                  titleText: 'Quickly Earn',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: min(max(Get.width / 1.27, 300), 500),
                        height: 80,
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                TextButton(
                                    onPressed: () async {
                                      await _box.erase();
                                      await _box.write('is_old', true);
                                      Get.offAllNamed('/auth/login');
                                    },
                                    child: Row(
                                      children: const <Widget>[
                                        Icon(Ionicons.log_out_outline,
                                            color: Colors.white),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('Login',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )),
                                TextButton(
                                    onPressed: () {
                                      Get.toNamed('/settings');
                                    },
                                    child: Row(
                                      children: const <Widget>[
                                        Text('Settings',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Ionicons.settings_outline,
                                          color: Colors.white,
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  const MenuTile({
    Key key,
    @required this.func,
    @required this.titleText,
    @required this.leadingIcon,
  }) : super(key: key);
  final void Function() func;
  final String titleText;
  final Widget leadingIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: ListTile(
          onTap: func,
          leading: leadingIcon,
          tileColor: Colors.white.withOpacity(0.13),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          focusColor: Colors.white.withOpacity(0.25),
          enableFeedback: true,
          title: Text(
            titleText.capitalize,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          )),
    );
  }
}

class LiveHomeBody extends StatefulWidget {
  const LiveHomeBody({Key key, @required this.updateNavStat}) : super(key: key);
  final void Function() updateNavStat;

  @override
  _LiveHomeBodyState createState() => _LiveHomeBodyState();
}

class _LiveHomeBodyState extends State<LiveHomeBody> {
  final PlayerController _playerController = Get.put(PlayerController());
  final WalletController _walletController = Get.put(WalletController());
  bool _loading = true;
  Map<String, dynamic> userData;
  Future<void> load() async {
    setState(() {
      _loading = true;
    });
    await getPlayerData().then((Map<String, dynamic> _details) {
      setState(() {
        _loading = false;
        userData = _details;
      });

      _playerController.init(userData['player'] as Map<String, dynamic>);
      _walletController.init(userData['wallet'] as Map<String, dynamic>);
    });
  }

  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithLogoAndTapBtn(leadFunc: widget.updateNavStat),
      floatingActionButton: const GlorySpinBtn(),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: RefreshIndicator(
        onRefresh: () async {
          return load();
        },
        child: !_loading
            ? HomeBody()
            : Center(
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
              ),
      ),
    );
  }
}
