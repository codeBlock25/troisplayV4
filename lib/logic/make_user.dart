import 'package:troisplay/data/user.dart';

User makeUserMap(String userString) {
  final String fullString = userString.replaceAll('}', '').replaceAll('{', '');
  final List<String> userAccList = fullString.split(',');
  final User userMap = User(
    fullName: userAccList[0].split(':')[1].replaceAll('"', ''),
    phoneNumber: userAccList[1].split(':')[1].replaceAll('"', ''),
    id: userAccList[2].split(':')[1].replaceAll('"', ''),
    token: userAccList[3].split(':')[1].replaceAll('"', ''),
  );

  return userMap;
}
