import 'package:proyecto_final/models/user_model.dart';

class Vehicle {
  int userId;
  String licence;
  String type;
  String color;
  int nSeats;
  String brand;
  String reference;
  String model;

  Map<int, String>? assignments;

  Vehicle(
      {required this.userId,
      required this.licence,
      required this.type,
      required this.color,
      required this.nSeats,
      required this.brand,
      required this.reference,
      required this.model});
}
