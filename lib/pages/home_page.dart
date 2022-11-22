import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:floating_pullup_card/floating_pullup_card.dart';
import 'package:proyecto_final/widgets/route_info.dart';

import '../widgets/nav_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Ushare Car App'),
        backgroundColor: Color(0xFF004C1A),
      ),
      body: FloatingPullUpCardLayout(
          onOutsideTap: () {
            return FloatingPullUpState.collapsed;
          },
          child: Center(child: Text("Aqui va el Mapa!")),
          body: Scrollbar(
            child: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.route_outlined,
                          color: Color(0xFF004C1A)), // icon
                      Text("Consulta tus rutas aqui!",
                          style:
                              TextStyle(fontWeight: FontWeight.bold)), // text
                    ],
                  ),
                ),
                Center(child: RouteInfoWidget(resume: false))
                // PlaceholderLines(
                //   count: 20,
                //   align: TextAlign.center,
                // ),
              ],
            )),
          )),
    );
  }
}
