import 'package:flutter/material.dart';

class User {
  User(
      {@required this.fullName,
      @required this.token,
      @required this.phoneNumber,
      @required this.id});

  User.fromJson(Map<String, dynamic> json) {
    fullName = json['full_name'].toString();
    token = json['token'].toString();
    phoneNumber = json['phone_number'].toString();
    id = json['_id'].toString();
  }

  String fullName;
  String phoneNumber;
  String id;
  String token;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['full_name'] = fullName;
    data['token'] = token;
    data['phone_number'] = phoneNumber;
    data['_id'] = id;
    return data;
  }
}
