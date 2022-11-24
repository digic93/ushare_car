import 'package:flutter/material.dart';
import 'package:proyecto_final/pages/find_route_page.dart';
import 'package:proyecto_final/pages/home_page.dart';
import 'package:proyecto_final/pages/login_page.dart';
import 'package:proyecto_final/pages/registrar_page.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final/services/auth_service.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget{
  const AppState({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ( _ ) => AuthService(),
        ),
      ],
     child: MyApp(),);     
     }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.grey),
      initialRoute: 'login',
      debugShowCheckedModeBanner: false,
      routes: {
        'login': (_) => LoginPage(),
        'registro': (_) => RegistrarPage(),
        'home': (_) => HomePage(),
        'findroute': (_) => FindRoutePage()
      },
    );
  }
}
