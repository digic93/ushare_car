import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = {"name": "Diego Castro", "image": ""};

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              "Diego Castro",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: backgroundDecoration,
            // decoration: BoxDecoration(
            //     color: Colors.green,
            //     image: DecorationImage(
            //         fit: BoxFit.fill,
            //         image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.alt_route, color: Color(0xFF004C1A)),
            title: Text('Mis Rutas'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.search, color: Color(0xFF004C1A)),
            title: Text('Buscar Rutas'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.list, color: Color(0xFF004C1A)),
            title: Text('Hitorial de viajes'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user, color: Color(0xFF004C1A)),
            title: Text('Perfil'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Color(0xFF004C1A)),
            title: Text('Configuración'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Color(0xFF004C1A)),
            title: Text('Cerrar sesión'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
