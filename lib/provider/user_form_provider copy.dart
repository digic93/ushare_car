import 'package:flutter/material.dart';
import 'package:proyecto_final/models/user_model.dart';

class UserFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  late UserModel user;

  UserFormProvider(this.user);

  bool isValidForm() {
    return formkey.currentState?.validate() ?? false;
  }
}
