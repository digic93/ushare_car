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
}
