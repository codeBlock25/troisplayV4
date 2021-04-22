import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:troisplay/components/app_bar.dart';
import 'package:troisplay/components/buttons.dart';
import 'package:troisplay/controllers/player.dart';
import 'package:troisplay/controllers/wallet.dart';
import 'package:troisplay/generated/assets.dart';
import 'package:troisplay/logic/get_player.dart';
import 'package:troisplay/screens/home/body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PlayerController _playerController = Get.put(PlayerController());
  final WalletController _walletController = Get.put(WalletController());
  bool _loading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithLogoAndTapBtn(leadFunc: () {}, notiFunc: () {}),
      floatingActionButton: const GlorySpinBtn(),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {
            _loading = true;
          });
          return Timer.periodic(const Duration(milliseconds: 500),
              (Timer _timer) {
            if (!_loading) {
              _timer.cancel();
            }
          });
        },
        child: FutureBuilder<Map<String, dynamic>>(
            future: getPlayerData(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapShot) {
              if (snapShot.connectionState == ConnectionState.done &&
                  _loading) {
                _loading = false;
              }
              if (snapShot.connectionState == ConnectionState.done &&
                  snapShot.hasData) {
                _playerController
                    .init(snapShot.data['player'] as Map<String, dynamic>);
                _walletController
                    .init(snapShot.data['wallet'] as Map<String, dynamic>);
                return HomeBody();
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
    );
  }
}
