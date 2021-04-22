import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:troisplay/components/buttons.dart';
import 'package:troisplay/components/indicator.dart';
import 'package:troisplay/components/panels.dart';
import 'package:troisplay/controllers/player.dart';
import 'package:troisplay/controllers/wallet.dart';
import 'package:troisplay/generated/assets.dart';
import 'package:troisplay/logic/get_player.dart';
import 'package:troisplay/screens/vtu/vtu_system.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int pageIndex = 0;
  final PlayerController _playerController = Get.put(PlayerController());
  final WalletController _walletController = Get.put(WalletController());
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        final Map<String, dynamic> _finalValue = await getPlayerData();

        _playerController.init(_finalValue['player'] as Map<String, dynamic>);
        _walletController.init(_finalValue['wallet'] as Map<String, dynamic>);
      },
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            UserDisplayPanel(
              profilePic: Assets.imagesProfilePic1,
              username: _playerController.thisPlayer.username,
              balance: _walletController.myWallet.balance,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FieldBtn(
                    label: 'My Games',
                    icon: const Icon(Icons.sports_esports_outlined,
                        color: Colors.white),
                    func: () {
                      Get.toNamed('/game_picker');
                    }),
                const SizedBox(
                  width: 20,
                ),
                FieldBtn(
                    label: 'Ongoing Games',
                    icon: const Icon(Icons.sports_esports_outlined,
                        color: Colors.white),
                    func: () {
                      Get.toNamed('/ongoing_games');
                    }),
                const SizedBox(
                  width: 20,
                ),
                FieldBtn(
                    label: 'VTU',
                    icon:
                        const Icon(Icons.monetization_on, color: Colors.white),
                    func: () {
                      Get.to(() => VtuSystem(),
                          transition: Transition.rightToLeft,
                          curve: Curves.easeInOut,
                          duration: const Duration(milliseconds: 400));
                    }),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: Get.width - (Get.width / 8),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              clipBehavior: Clip.hardEdge,
              child: PageView(
                onPageChanged: (int index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
                children: _demo,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Indicator>[
                Indicator(
                  isActive: pageIndex == 0,
                ),
                Indicator(
                  isActive: pageIndex == 1,
                ),
                Indicator(
                  isActive: pageIndex == 2,
                ),
                Indicator(
                  isActive: pageIndex == 3,
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}

final List<Widget> _demo = <Widget>[
  Container(
    height: 200,
    decoration: BoxDecoration(
      color: Colors.black,
      image: const DecorationImage(
          image: AssetImage('assets/images/ads1.png'), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(10),
    ),
    clipBehavior: Clip.hardEdge,
  ),
  Container(
    height: 200,
    decoration: BoxDecoration(
      color: Colors.black,
      image: const DecorationImage(
          image: AssetImage('assets/images/ads1.png'), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(10),
    ),
    clipBehavior: Clip.hardEdge,
  ),
  Container(
    height: 200,
    decoration: BoxDecoration(
      color: Colors.black,
      image: const DecorationImage(
          image: AssetImage('assets/images/ads1.png'), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(10),
    ),
    clipBehavior: Clip.hardEdge,
  ),
  Container(
    height: 200,
    decoration: BoxDecoration(
      color: Colors.black,
      image: const DecorationImage(
          image: AssetImage('assets/images/ads1.png'), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(10),
    ),
    clipBehavior: Clip.hardEdge,
  ),
];
