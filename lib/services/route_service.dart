import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:proyecto_final/models/route_model.dart';
import 'package:http/http.dart' as http;
import '../utilities/constants.dart';

class RouteService extends ChangeNotifier {
  final String _baseUrl = baseUrl;
  bool chargeRoute = false;
  late RouteModel route;
  late final List<RouteModel> routes = [];

  RouteService() {
    loadRouts();
  }

  Future<List<RouteModel>> loadRouts() async {
    chargeRoute = true;

    final url = Uri.https(_baseUrl, 'routes.json');
    final response = await http.get(url);
    final body = response.body.replaceAll("null,", "");
    final List<dynamic> routesMap = json.decode(body);

    routesMap.forEach((contactObj) {
      final routeTemp = RouteModel.fromMap(contactObj);

      routes.add(routeTemp);
    });

    notifyListeners();
    chargeRoute = false;

    return routes;
  }
}
