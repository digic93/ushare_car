import 'package:flutter/material.dart';
import 'package:proyecto_final/models/user_model.dart';
import 'package:proyecto_final/models/vehicle_model.dart';

class RouteModel {
  int userId;
  UserModel user;
  String destinationNeighborhood;
  TimeOfDay departureTime;
  List<String>? availableDays;
  List<String>? route;

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
}
