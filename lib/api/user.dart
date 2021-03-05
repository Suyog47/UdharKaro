
class user {
  String name;
  String email;
  String mobile;

  user({this.name, this.email, this.mobile});

  factory user.fromJson(Map<String, dynamic> json) {
    return user(
      name: json['name'] as String,
      email: json['email'] as String,
      mobile: json['mobile'] as String,
    );
  }
}
