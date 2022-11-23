import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../utilities/constants.dart';

class UsuarioService extends ChangeNotifier {
  final String _baseUrl = baseUrl;
  bool cargandoUsuario = false;
  late UserModel usuairo;
}
