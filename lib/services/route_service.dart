import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:proyecto_final/models/route_model.dart';
import 'package:http/http.dart' as http;
import '../utilities/constants.dart';

class RouteService extends ChangeNotifier {
  final String _baseUrl = "https://carro-app-b2401-default-rtdb.firebaseio.com/Routes";
  final List<RouteModel> RouteModels= [];
  bool chargeUser = false;
  late RouteModel route;

  RouteService(){
    loadRoutes();
  }
  Future <List<RouteModel>> loadRoutes() async{
    
    notifyListeners();
    final url = Uri.https(_baseUrl, 'contactos.json');
    final respuesta = await http.get(url);
    print("::::::::::::::::::::::::::::::::::::::::::");
    print(respuesta.body);
    print("::::::::::::::::::::::::::::::::::::::::::");
     final Map<String,dynamic>RouteServiceMap = json.decode(respuesta.body);
     


    RouteServiceMap.forEach((key,value) { 
      final RouteServiceTemp= RouteModel.fromMap(value);
      RouteModels.add(RouteServiceTemp);
    });
    notifyListeners();
      return RouteModels;
  }
}
