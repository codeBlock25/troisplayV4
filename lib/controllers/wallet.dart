import 'package:get/get.dart';
import 'package:troisplay/data/wallet.dart';

class WalletController extends GetxController {
  Wallet _wallet;
  void init(Map<String, dynamic> currentWalletRec) {
    _wallet = Wallet.fromJson(currentWalletRec);
  }

  Wallet get myWallet => _wallet;
}
