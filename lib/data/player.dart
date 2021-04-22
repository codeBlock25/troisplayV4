class Player {
  Player({
    this.activeReferral,
    this.inactiveReferral,
    this.profilePic,
    this.sId,
    this.username,
    this.email,
    this.address,
    this.state,
    this.country,
    this.referCode,
    this.userID,
  });

  Player.fromJson(Map<String, dynamic> json) {
    activeReferral = int.tryParse(json['activeReferral'].toString(), radix: 10);
    inactiveReferral =
        int.tryParse(json['inactiveReferral'].toString(), radix: 10);
    profilePic = json['profile_pic'].toString();
    sId = json['_id'].toString();
    username = json['username'].toString();
    email = json['email'].toString();
    address = json['address'].toString();
    state = json['state'].toString();
    country = json['country'].toString();
    referCode = json['referCode'].toString();
    userID = json['userID'].toString();
  }

  int activeReferral;
  int inactiveReferral;
  String profilePic;
  String sId;
  String username;
  String email;
  String address;
  String state;
  String country;
  String referCode;
  String userID;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['activeReferral'] = activeReferral;
    data['inactiveReferral'] = inactiveReferral;
    data['profile_pic'] = profilePic;
    data['_id'] = sId;
    data['username'] = username;
    data['email'] = email;
    data['address'] = address;
    data['state'] = state;
    data['country'] = country;
    data['referCode'] = referCode;
    data['userID'] = userID;
    return data;
  }
}
