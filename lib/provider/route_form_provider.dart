import 'package:flutter/material.dart';

import '../models/route_model.dart';

class RouteFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  late RouteModel route;

  RouteFormProvider(this.route);

  bool isValidForm() {
    return formkey.currentState?.validate() ?? false;
  }
}
