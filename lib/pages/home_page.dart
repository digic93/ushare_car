import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:floating_pullup_card/floating_pullup_card.dart';
import 'package:flutter_placeholder_textlines/flutter_placeholder_textlines.dart';

import '../widgets/nav_drawer.dart';

class HomePage extends StatelessWidget {
  Widget _cardRuta() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.network(
                'https://static1.makeuseofimages.com/wordpress/wp-content/uploads/2022/07/route-marked-on-a-map.jpg?q=50&fit=contain&w=500&h=&dpr=1.5'),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://rickandmortyapi.com/api/character/avatar/363.jpeg"),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Armando Torres Rojas',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }

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
        body: Column(
          children: <Widget>[
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.route_outlined, color: Color(0xFF004C1A)), // icon
                  Text("Consulta tus rutas aqui!",
                      style: TextStyle(fontWeight: FontWeight.bold)), // text
                ],
              ),
            ),
            Center(child: _cardRuta())
            // PlaceholderLines(
            //   count: 20,
            //   align: TextAlign.center,
            // ),
          ],
        ),
      ),
    );
  }
}
