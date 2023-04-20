import 'dart:convert';

class UserModel {
  int id;
  int mobile;
  String fistName;
  String lasName;
  String email;
  String password;
  String collegeDegree;
  bool isDriver;
  String? url_photo;

  UserModel(
      {required this.id,
      required this.mobile,
      required this.fistName,
      required this.lasName,
      required this.email,
      required this.password,
      required this.collegeDegree,
      required this.isDriver,
      this.url_photo});

  factory UserModel.fromJson(String str) => UserModel.fromMap(jsonDecode(str));
  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        mobile: json["mobile"],
        fistName: json["fistName"],
        lasName: json["lasName"],
        email: json["email"],
        collegeDegree: json["collegeDegree"],
        isDriver: json["isDriver"],
        url_photo: json["url_photo"], password: '',
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "mobile": mobile,
        "fistName": fistName,
        "lasName": lasName,
        "email": email,
        "collegeDegree": collegeDegree,
        "isDriver": isDriver,
        "url_photo": url_photo,
      };
}
