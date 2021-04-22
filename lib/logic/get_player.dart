import 'package:dio/dio.dart';
// ignore: implementation_imports
import 'package:dio/src/response.dart' as dio_response;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:troisplay/data/api.dart';
import 'package:troisplay/data/game_type.dart';
import 'package:troisplay/data/user.dart';
import 'package:troisplay/screens/welcome/error_screen.dart';

int count = 1;

Future<Map<String, dynamic>> getPlayerData() async {
  final Dio _dio = Dio();
  final GetStorage _box = GetStorage();
  final User _user = User.fromJson(await _box.read('user_account'));
  Map<String, dynamic> finalValue;
  await _dio
      .get('$apiKey/api/player-detail',
          options: Options(headers: <String, String>{
            'authorization': 'Bearer ${_user.token}'
          }))
      .then((dio_response.Response<dynamic> value) {
    count = 1;
    finalValue = value.data as Map<String, dynamic>;
  }).catchError((dynamic error) {
    DioError _dioError;
    if (error.runtimeType == DioError) {
      _dioError = error as DioError;
    }
    if (_dioError.response.statusCode == 404) {
      _box.erase();
      _box.write('is_old', true);
      Get.offAllNamed('/auth/login');
      return;
    }
    Get.snackbar('Network Error',
        'Sorry we are having trouble connecting with the troisplay server , please check your internet connection and try again.',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: const Duration(seconds: 8),
        isDismissible: true);
    Future<void>.delayed(const Duration(seconds: 4), () {
      if (count >= 2) {
        Get.offUntil(
            GetPageRoute<GetPage>(
                page: () => const ErrorScreen(
                    error:
                        'Failed to load data from server. Network Error\n please check your internet connection and try again.'),
                transition: Transition.downToUp,
                curve: Curves.decelerate,
                transitionDuration: const Duration(milliseconds: 500)),
            ModalRoute.withName('/home'));
        return;
      }
      count = count + 1;
      getPlayerData();
    });
  });
  return finalValue;
}

Future<List<Map<String, dynamic>>> getGamesForP2(
    {GameType game, int stake}) async {
  final Dio _dio = Dio();
  final GetStorage _box = GetStorage();
  final User _user = User.fromJson(await _box.read('user_account'));
  List<Map<String, dynamic>> finalValue;
  await _dio
      .get('$apiKey/api/games/all/player2-playable',
          queryParameters: <String, int>{'game': game.index, 'stake': stake},
          options: Options(headers: <String, String>{
            'authorization': 'Bearer ${_user.token}'
          }))
      .then((dio_response.Response<dynamic> value) {
    finalValue = List.castFrom(value.data['games'] as List<dynamic>);
  }).catchError((dynamic error) {
    Get.snackbar('Network Error',
        'Sorry we are having trouble connecting with the troisplay server , please check your internet connection and try again.',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: const Duration(seconds: 5),
        isDismissible: true);
    Future<void>.delayed(const Duration(seconds: 10), () {
      Get.snackbar('Network Error',
          'Failed to load data from server. Network Error\n please check your internet connection, this will automatically try again.',
          backgroundColor: Colors.red,
          colorText: Colors.white,
          duration: const Duration(seconds: 6),
          isDismissible: true);
      // Future<void>.delayed(const Duration(seconds: 6), () {
      //   getGamesForP2(game: game, stake: stake);
      // });
    });
  });
  return finalValue;
}

Future<List<Map<String, dynamic>>> getMyGames() async {
  final Dio _dio = Dio();
  final GetStorage _box = GetStorage();
  final User _user = User.fromJson(await _box.read('user_account'));
  List<Map<String, dynamic>> finalValue;
  await _dio
      .get('$apiKey/api/games/all-ongoing',
          options: Options(headers: <String, String>{
            'authorization': 'Bearer ${_user.token}'
          }))
      .then((dio_response.Response<dynamic> value) {
    finalValue = List.castFrom(value.data['games'] as List<dynamic>);
  }).catchError((dynamic error) {
    Get.snackbar('Network Error',
        'Sorry we are having trouble connecting with the troisplay server , please check your internet connection and try again.',
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: const Duration(seconds: 5),
        isDismissible: true);
    Future<void>.delayed(const Duration(seconds: 10), () {
      Get.snackbar('Network Error',
          'Failed to load data from server. Network Error\n please check your internet connection, this will automatically try again.',
          backgroundColor: Colors.red,
          colorText: Colors.white,
          duration: const Duration(seconds: 6),
          isDismissible: true);
    });
  });
  return finalValue;
}
