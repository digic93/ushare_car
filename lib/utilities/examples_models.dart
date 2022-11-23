import 'package:flutter/material.dart';
import 'package:proyecto_final/models/route_model.dart';
import 'package:proyecto_final/models/vehicle_model.dart';

import '../models/user_model.dart';

final userArmando = UserModel(
    id: 10228352118,
    mobile: 3167680733,
    fistName: "Armando",
    lasName: "Torres Rojas",
    email: "atorresr@ucentral.edu.co",
    collegeDegree: "Ingenieria Ambiental",
    isDriver: false,
    url_photo: "https://rickandmortyapi.com/api/character/avatar/363.jpeg");

final vehicleArmando = Vehicle(
    userId: 10228352118,
    licence: "ABC123",
    type: "Carro",
    color: "Negro",
    brand: "Mazda",
    reference: "6",
    model: "2012",
    nSeats: 4);

final routeArmando = RouteModel(
    userId: 10228352118,
    user: userArmando,
    vehicle: vehicleArmando,
    departureTime: TimeOfDay(hour: 18, minute: 30),
    destinationNeighborhood: "Rincon De Venencia",
    startPoint: "Ucentral cede centro nuevo campus Cra 5",
    route: ["Cra 5ta", "Av 19", "NQS Cra 30", "Auto Sur", "Av Boyaca"],
    availableDays: ["Lunes", "Miercoles", "Virenes"],
    driverNote: "Disponible Solo dias impares por pico y placa!");

final routeDiego = RouteModel(
    userId: 10228352118,
    user: userArmando,
    vehicle: vehicleArmando,
    departureTime: TimeOfDay(hour: 18, minute: 30),
    destinationNeighborhood: "Mazuren",
    startPoint: "Ucentral cede Unilago cra 15 ",
    route: ["Cra 15", "Av call 100", "Auto Norte", "Av call 134"],
    availableDays: ["Miercoles", "Virenes"],
    driverNote: "Disponible Solo dias impares por pico y placa!");

final routeDavid = RouteModel(
    userId: 10228352118,
    user: userArmando,
    vehicle: vehicleArmando,
    departureTime: TimeOfDay(hour: 18, minute: 30),
    destinationNeighborhood: "Pradera",
    startPoint: "Ucentral cede Unilago cra 15",
    route: ["Cra 15", "Av call 100", "NQS Cra 30", "Av americas", "Av 68"],
    availableDays: ["Lunes", "Miercoles", "Virenes"],
    driverNote: "Disponible Solo dias impares por pico y placa!");

final routeSamira = RouteModel(
    userId: 10228352118,
    user: userArmando,
    vehicle: vehicleArmando,
    departureTime: TimeOfDay(hour: 18, minute: 30),
    destinationNeighborhood: "Restrepo",
    startPoint: "Ucentral cede Unilago cra 15",
    route: ["Cra 15", "call 17", "Cra 10"],
    availableDays: ["Lunes", "Miercoles", "Virenes"],
    driverNote: "Disponible Solo dias impares por pico y placa!");
// routePlaces

List<RouteModel> routesList = [
  routeArmando,
  routeDiego,
  routeDavid,
  routeSamira,
];
