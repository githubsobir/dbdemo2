class Users {
  String email;
  String number;
  String address;
  String password;

  Users({this.email, this.number, this.address, this.password});

  Users.fromJson(Map<String, dynamic> json)
      : email = json["email"],
        number = json["number"],
        address = json["address"],
        password = json["password"];

  Map<String, dynamic> toJson() => {
        "email": email,
        "number": number,
        "address": address,
        "password": password,
      };
}
