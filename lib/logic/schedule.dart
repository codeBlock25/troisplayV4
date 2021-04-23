import 'dart:math';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:troisplay/main.dart';

class NotificationModel {
  NotificationModel({this.msg, this.title});
  String title;
  String msg;
}

Future<void> gameLocalNotifier(NotificationModel notification) async {
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
    'game_notif',
    'game_notif',
    'Channel for Game notification',
    icon: 'troisplay_logo',
    largeIcon: DrawableResourceAndroidBitmap('troisplay_logo'),
  );

  const IOSNotificationDetails iOSPlatformChannelSpecifics =
      IOSNotificationDetails(
          presentAlert: true, presentBadge: true, presentSound: true);
  const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.show(Random().nextInt(100000),
      notification.title, notification.msg, platformChannelSpecifics);
}
