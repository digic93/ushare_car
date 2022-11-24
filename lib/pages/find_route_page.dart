import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:floating_pullup_card/floating_pullup_card.dart';
import 'package:flutter_placeholder_textlines/flutter_placeholder_textlines.dart';
import 'package:proyecto_final/models/route_model.dart';
import 'package:proyecto_final/utilities/examples_models.dart';
import 'package:proyecto_final/widgets/route_info.dart';

import '../utilities/constants.dart';
import '../widgets/nav_drawer.dart';

class FindRoutePage extends StatelessWidget {
  List<Widget> _routesWigets = [];

  @override
  Widget build(BuildContext context) {
    routesList.forEach((route) {
      this._routesWigets.add(RouteInfoWidget(
            route: route,
            resume: true,
          ));
    });

    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text('Buscar Rutas'),
          backgroundColor: Color(0xFF004C1A),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 231, 231, 229),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.centerLeft,
                      decoration: simpleDecorationStyle,
                      height: 60.0,
                      child: TextField(
                        onChanged: ((value) {
                          _getroutebySearch(value);
                        }),
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 14.0),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: 'Busca una ruta por avenida',
                          hintStyle: simpleTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: SingleChildScrollView(
                      child: Column(
                        children: this._routesWigets,
                      ),
                    )),
              ],
            ),
          ),
        ))));
  }

  void _getroutebySearch(String desroute) {
    List<RouteModel> routes = routesList;
    this._routesWigets.clear();

     routes.forEach((routeInstance) {
       for (var i = 0; i >= 0 && i < routeInstance.route!.length; i++) {
         String descAv = routeInstance.route![i].toUpperCase();
         if (descAv.contains(desroute.toUpperCase())) {
           this._routesWigets.add(RouteInfoWidget(
             route: routeInstance,
             resume: true,
           ));
         i = -1;
         }
     }
      });
  }
}
