class User {
  String? usertype;
  String? email;
  String? mobile;
  String? name;
  String? check;
  String? password;
  String? message;
  // String? message;

  User(
      {this.usertype,
      this.email,
      this.mobile,
      this.name,
      this.check,
      this.password});

  User.fromJson(Map<String, dynamic> json) {
    usertype = json['usertype'];
    email = json['email'];
    mobile = json['mobile'];
    name = json['name'];
    check = json['check'];
    message = json['message'];
  }

  Map<String, dynamic> toLoginJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['mobile'] = this.mobile;
    data['password'] = this.password;

    return data;
  }

  Map<String, dynamic> toSignUpJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['name'] = this.name;
    data['mobile'] = this.mobile;
    data['password'] = this.password;
    data['email'] = this.email;

    return data;
  }
}
