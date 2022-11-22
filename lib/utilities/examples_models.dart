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

// routePlaces