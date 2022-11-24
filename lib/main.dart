import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final/pages/create_route_page.dart';
import 'package:proyecto_final/pages/find_route_page.dart';
import 'package:proyecto_final/pages/home_page.dart';
import 'package:proyecto_final/pages/login_page.dart';
import 'package:proyecto_final/pages/registrar_page.dart';
import 'package:proyecto_final/provider/route_form_provider.dart';
import 'package:proyecto_final/services/route_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Samira no se tire mi app.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => RouteService(),)],
        child: MaterialApp(
          theme:
              ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.grey),
          initialRoute: 'login',
          debugShowCheckedModeBanner: false,
          routes: {
            'login': (_) => LoginPage(),
            'registro': (_) => RegistrarPage(),
            'home': (_) => HomePage(),
            'findroute': (_) => FindRoutePage(),
            'createroute': (_) => CreateRoutePage()
          },
        ));
  }
}