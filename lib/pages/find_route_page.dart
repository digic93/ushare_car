import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:floating_pullup_card/floating_pullup_card.dart';
import 'package:flutter_placeholder_textlines/flutter_placeholder_textlines.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final/models/route_model.dart';
import 'package:proyecto_final/pages/load_page.dart';
import 'package:proyecto_final/services/route_service.dart';
import 'package:proyecto_final/utilities/examples_models.dart';
import 'package:proyecto_final/widgets/route_info.dart';

import '../utilities/constants.dart';
import '../widgets/nav_drawer.dart';

class FindRoutePage extends StatelessWidget {
  List<RouteModel> _routesList = [];
  Column _columnRoutes = Column(
    children: [],
  );
  @override
  Widget build(BuildContext context) {
    final routeService = Provider.of<RouteService>(context);

    if (routeService.chargeRoute) return LoadPage();

    _routesList = routeService.routes;

    _routesList.forEach((route) {
      _columnRoutes.children.add(RouteInfoWidget(
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
                    MaterialButton(
                      onPressed: () {
                        _getroutebySearch("");
                      },
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Icon(
                        Icons.search,
                        size: 24,
                      ),
                      padding: EdgeInsets.all(16),
                      shape: CircleBorder(),
                    )
                  ],
                ),
                SizedBox(height: 10.0),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: SingleChildScrollView(
                        child: Expanded(
                            child: new ListView(
                                shrinkWrap: true,
                                children: <Widget>[
                          // Title

                          new Padding(
                            padding:
                                const EdgeInsets.only(top: 10.00, left: 10.00),
                            child: new Text(
                              "Rutas",
                              textAlign: TextAlign.start,
                            ),
                          ),
                          _columnRoutes
                        ]))

                        // Expanded(
                        //     child: new ListView.builder(
                        //         itemCount: this._routesList.length,
                        //         itemBuilder: (BuildContext ctxt, int Index) {
                        //           return RouteInfoWidget(
                        //             route: this._routesList[Index],
                        //             resume: true,
                        //           );
                        //         }))
                        //     Column(
                        //   children: this._routesWigets,
                        // ),
                        )),
              ],
            ),
          ),
        ))));
  }

  void _getroutebySearch(String desroute) {
    List<RouteModel> routes = _routesList;
    this._columnRoutes.children.clear();

    // routes.forEach((routeInstance) {
    //   for (var i = 0; i >= 0 && i < routeInstance.route!.length; i++) {
    //     String descAv = routeInstance.route![i].toUpperCase();
    //     if (descAv.contains(desroute.toUpperCase())) {
    //       this._routesWigets.add(RouteInfoWidget(
    //             route: routeInstance,
    //             resume: true,
    //           ));
    //       i = -1;
    //     }
    //   }
    // });
  }
}
