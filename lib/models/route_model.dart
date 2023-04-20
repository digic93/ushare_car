import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:proyecto_final/models/user_model.dart';
import 'package:proyecto_final/models/vehicle_model.dart';

class RouteModel {
  int userId;
  UserModel user;
  String destinationNeighborhood;
  TimeOfDay departureTime;
  List<dynamic>? availableDays;
  List<dynamic>? route;

  String? startPoint;
  String? driverNote;
  Vehicle? vehicle;

  RouteModel(
      {required this.userId,
      required this.user,
      required this.destinationNeighborhood,
      required this.departureTime,
      this.availableDays,
      this.route,
      this.driverNote,
      this.startPoint,
      this.vehicle});

  factory RouteModel.fromJson(String str) =>
      RouteModel.fromMap(jsonDecode(str));
  String toJson() => json.encode(toMap());

  factory RouteModel.fromMap(Map<String, dynamic> json) {
    RouteModel route = RouteModel(
      userId: json["userId"],
      user: UserModel.fromMap(json["user"]),
      destinationNeighborhood: json["destinationNeighborhood"],
      departureTime: TimeOfDay(
          hour: json["departureTime"]["hour"],
          minute: json["departureTime"][" minute"] ?? 0),
      availableDays: json["availableDays"],
      route: json["route"],
      driverNote: json["driverNote"],
      startPoint: json["startPoint"],
      vehicle: Vehicle.fromMap(json["vehicle"]),
    );
    return route;
  }

  Map<String, dynamic> toMap() => {
        "userId": userId,
        "user": user,
        "destinationNeighborhood": destinationNeighborhood,
        "departureTime": departureTime,
        "availableDays": availableDays,
        "route": route,
        "driverNote": driverNote,
        "startPoint": startPoint,
        "vehicle": vehicle,
      };
}

