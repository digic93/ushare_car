import 'package:flutter/material.dart';
import 'package:proyecto_final/models/route_model.dart';

import '../utilities/constants.dart';

class RouteService extends ChangeNotifier {
  final String _baseUrl = baseUrl;
  bool chargeUser = false;
  late RouteModel route;
}
