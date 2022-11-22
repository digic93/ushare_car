import 'package:flutter/material.dart';
import 'package:proyecto_final/models/route_model.dart';
import 'package:proyecto_final/models/vehicle_model.dart';
import 'package:proyecto_final/utilities/examples_models.dart';

class RouteInfoWidget extends StatelessWidget {
  bool resume;

  RouteInfoWidget({Key? key, required this.resume}) : super(key: key);

  Widget _routeInfoWidget(RouteModel route, BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: Color.fromRGBO(36, 97, 57, 1),
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  "Informacion de la ruta:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black87),
                )
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.place_outlined,
                  color: Color.fromARGB(255, 86, 86, 86),
                  size: 20,
                ),
                Text(
                  "Lugar de salida: ",
                  style: TextStyle(color: Color.fromARGB(255, 86, 86, 86)),
                ),
                Text(
                  route.startPoint.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.place,
                  color: Color.fromARGB(255, 86, 86, 86),
                  size: 20,
                ),
                Text(
                  "Destino: ",
                  style: TextStyle(color: Color.fromARGB(255, 86, 86, 86)),
                ),
                Text(
                  route.destinationNeighborhood.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.route_outlined,
                  color: Color.fromARGB(255, 86, 86, 86),
                  size: 20,
                ),
                Text(
                  "ruta: ",
                  style: TextStyle(color: Color.fromARGB(255, 86, 86, 86)),
                ),
                Text(
                  route.route!.join(", ").toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_view_day_sharp,
                  color: Color.fromARGB(255, 86, 86, 86),
                  size: 20,
                ),
                Text(
                  "Dias: ",
                  style: TextStyle(color: Color.fromARGB(255, 86, 86, 86)),
                ),
                Text(
                  route.availableDays!.join(", ").toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.punch_clock,
                  color: Color.fromARGB(255, 86, 86, 86),
                  size: 20,
                ),
                Text(
                  "Hora de salida: ",
                  style: TextStyle(color: Color.fromARGB(255, 86, 86, 86)),
                ),
                Text(
                  route.departureTime.format(context),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 8),
          ],
        ));
  }

  Widget _vehicleInfoWidget(RouteModel route) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.car_crash,
                  color: Color.fromRGBO(36, 97, 57, 1),
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  "Informacion del vehiculo:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black87),
                )
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.time_to_leave,
                  color: Color.fromARGB(255, 86, 86, 86),
                  size: 20,
                ),
                Text(
                  "Placas: ",
                  style: TextStyle(color: Color.fromARGB(255, 86, 86, 86)),
                ),
                Text(
                  route.vehicle!.licence,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 20),
                Icon(
                  Icons.palette,
                  color: Color.fromARGB(255, 86, 86, 86),
                  size: 20,
                ),
                Text(
                  "Color: ",
                  style: TextStyle(color: Color.fromARGB(255, 86, 86, 86)),
                ),
                Text(
                  route.vehicle!.color,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.car_rental,
                  color: Color.fromARGB(255, 86, 86, 86),
                  size: 20,
                ),
                Text(
                  "Marca: ",
                  style: TextStyle(color: Color.fromARGB(255, 86, 86, 86)),
                ),
                Text(
                  route.vehicle!.brand,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 20),
                Icon(
                  Icons.calendar_month,
                  color: Color.fromARGB(255, 86, 86, 86),
                  size: 20,
                ),
                Text(
                  "Model: ",
                  style: TextStyle(color: Color.fromARGB(255, 86, 86, 86)),
                ),
                Text(
                  route.vehicle!.model,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 8),
          ],
        ));
  }

  List<Widget> _contentCardRouteInfo(
      RouteModel route, bool resume, BuildContext context) {
    List<Widget> content = [];

    if (!resume) {
      content.add(
        SizedBox(
          height: 100,
          child: Image.network(
              'https://static1.makeuseofimages.com/wordpress/wp-content/uploads/2022/07/route-marked-on-a-map.jpg?q=50&fit=contain&w=500&h=&dpr=5.5'),
        ),
      );
    }

    content.add(
      Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(route.user.url_photo.toString()),
            ),
            const SizedBox(width: 8),
            Text(
              route.user.fistName + " " + route.user.lasName + ".",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
    content.add(_routeInfoWidget(route, context));

    if (!resume) {
      content.add(_vehicleInfoWidget(route));
      content.add(Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          TextButton(
            child: const Text('Confirmar'),
            onPressed: () {/* ... */},
          ),
          const SizedBox(width: 8),
          TextButton(
            child: const Text('Descartar'),
            onPressed: () {/* ... */},
          ),
          const SizedBox(width: 30),
        ],
      ));
    }

    content.add(SizedBox(height: 10));

    return content;
  }

  // final UserModel? _user;
  // final RouteModel? _route;
  // final Vehicle? _vehicle;

  @override
  Widget build(BuildContext context) {
    RouteModel _route = routeArmando;
    Vehicle? _vehicle = _route.vehicle;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: _contentCardRouteInfo(_route, this.resume, context),
        ),
      ),
    );
  }
}
