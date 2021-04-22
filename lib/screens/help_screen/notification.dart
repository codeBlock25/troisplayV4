import 'package:flutter/material.dart';
import 'package:troisplay/components/app_bar.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithTitle(text: 'Notifications'),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future<dynamic>.delayed(const Duration(seconds: 4));
        },
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: ListTile(
                  tileColor: const Color(0xFF232323),
                  leading: const SizedBox(
                    width: 35,
                    height: 35,
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  title: Text(
                      'You ${(index % 3) == 0 ? 'Won' : (index % 3) == 1 ? 'Lost' : (index % 3) == 2 ? 'Draw' : ''} this game'),
                  subtitle: Text(
                      'The game played between you and James  ${(index % 3) == 0 ? 'came out as you win' : (index % 3) == 1 ? 'was a lost' : (index % 3) == 2 ? 'was a draw' : ''}'),
                ),
              );
            }),
      ),
    );
  }
}
