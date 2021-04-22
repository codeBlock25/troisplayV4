class Wallet {
  Wallet({
    this.balance,
    this.bookBalance,
    this.lastUpdated,
    this.sId,
    this.userID,
    this.lastRefId,
  });

  Wallet.fromJson(Map<String, dynamic> json) {
    balance = int.tryParse(json['balance'].toString());
    bookBalance = int.tryParse(json['bookBalance'].toString());
    lastUpdated = json['lastUpdated'].toString();
    sId = json['_id'].toString();
    userID = json['userID'].toString();
    lastRefId = json['lastRefId'].toString();
  }

  int balance;
  int bookBalance;
  String lastUpdated;
  String sId;
  String userID;
  String lastRefId;
  int iV;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['balance'] = balance;
    data['bookBalance'] = bookBalance;
    data['lastUpdated'] = lastUpdated;
    data['_id'] = sId;
    data['userID'] = userID;
    data['lastRefId'] = lastRefId;
    return data;
  }
}
