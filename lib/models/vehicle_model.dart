import 'dart:convert';
import 'dart:developer';

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

  // Map<int, String>? assignments;

  Vehicle(
      {required this.userId,
      required this.licence,
      required this.type,
      required this.color,
      required this.nSeats,
      required this.brand,
      required this.reference,
      required this.model});

  factory Vehicle.fromJson(String str) => Vehicle.fromMap(jsonDecode(str));
  String toJson() => json.encode(toMap());

  factory Vehicle.fromMap(Map<String, dynamic> json) {
    return Vehicle(
      userId: json["userId"],
      licence: json["licence"],
      type: json["type"],
      color: json["color"],
      nSeats: json["nSeats"],
      brand: json["brand"],
      reference: json["reference"],
      model: json["model"],
    );
  }

  Map<String, dynamic> toMap() => {
        "userId": userId,
        "licence": licence,
        "type": type,
        "color": color,
        "nSeats": nSeats,
        "brand": brand,
        "reference": reference,
        "model": model,
      };
}
