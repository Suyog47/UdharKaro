
class user {
  String name;
  String email;
  String mobile;
  String pic;
  String vendor;
  String price;
  String lastTransaction;
  String type;
  String date;


  user({this.name, this.email, this.mobile, this.pic, this.vendor, this.price, this.lastTransaction,this.type,this.date});

  factory user.fromJson(Map<String, dynamic> json) {
    return user(
      name: json['name'] as String,
      email: json['email'] as String,
      mobile: json['mobile'] as String,
      pic: json['pic'] as String,
      vendor: json['vendor'] as String,
      price: json['price'] as String,
      lastTransaction: json['lastTransaction'] as String,
      type: json['type'] as String,
      date: json['date'] as String,
    );
  }
}
