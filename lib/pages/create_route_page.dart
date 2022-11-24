// ignore_for_file: unnecessary_this

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:floating_pullup_card/floating_pullup_card.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_final/models/route_model.dart';
import 'package:proyecto_final/models/vehicle_model.dart';
import 'package:proyecto_final/provider/route_form_provider.dart';
import 'package:proyecto_final/services/route_service.dart';
import 'package:proyecto_final/widgets/route_info.dart';

import '../models/user_model.dart';
import '../widgets/nav_drawer.dart';

const List hours = <String>[
  "7:00",
  "7:30",
  "8:00",
  "8:30",
  "9:00",
  "9:30",
  "10:00",
  "10:30",
  "11:00",
  "11:30",
  "12:00",
  "12:30",
  "13:00",
  "13:30",
  "14:00",
  "14:30",
  "16:00",
  "16:30",
  "17:00",
  "17:30",
  "18:00",
  "18:30",
  "19:00",
  "19:30",
  "20:00",
  "20:30",
  "21:00",
  "21:30",
  "22:00",
];

class CreateRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeService = Provider.of<RouteService>(context);

    return ChangeNotifierProvider(
      create: (_) => RouteFormProvider(routeService.route),
      child: Scaffold(
          drawer: NavDrawer(),
          appBar: AppBar(
            title: Text('Ushare Car App'),
            backgroundColor: Color(0xFF004C1A),
          ),
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 253),
                      ),
                      child: Column(
                        children: [
                          CreateRouteForm(routeService),
                        ],
                      ))))),
    );
  }
}

class CreateRouteForm extends StatefulWidget {
  RouteService routeService;

  CreateRouteForm(this.routeService);

  @override
  CreateRouteFormState createState() {
    return CreateRouteFormState();
  }
}

class CreateRouteFormState extends State<CreateRouteForm> {
  final _formKey = GlobalKey<FormState>();
  bool _operaLunes = false;
  bool _operaMartes = false;
  bool _operaMiercoles = false;
  bool _operaJueves = false;
  bool _operaViernes = false;
  bool _operaSabado = false;

  Widget build(BuildContext context) {
    // final routeformProvider = Provider.of<RouteFormProvider>(context);
    // final route = routeformProvider.route;
    // Build a Form widget using the _formKey created above.
    // route = RouteModel(userId: userId, user: user, destinationNeighborhood: destinationNeighborhood, departureTime: departureTime)

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Informacion de la ruta',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.place_outlined),
              hintText: 'Ingrese lugar de salida',
              labelText: 'Lugar Salida',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'por favor ingrese el lugar de salida';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.place),
              hintText: 'Ingrese barrio destino',
              labelText: 'Destino',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'por favor ingrese el lugar de destino';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.group),
              hintText: 'Ingrese Numero cupos disponibles',
              labelText: 'Cupos disponibles',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'por favor ingrese numero cupos disponibles';
              }
              return null;
            },
          ),
          SizedBox(height: 20.0),
          Row(children: [
            Icon(Icons.calendar_month),
            SizedBox(
              height: 10.0,
              width: 15,
            ),
            Text(
              'Dias que opera',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
          SizedBox(height: 10.0),
          CheckboxListTile(
              title: Text('Lunes'),
              value: _operaLunes,
              onChanged: (value) {
                setState(() {
                  this._operaLunes = value!;
                });
              }),
          CheckboxListTile(
              title: Text('Martes'),
              value: _operaMartes,
              onChanged: (value) {
                setState(() {
                  this._operaMartes = value!;
                });
              }),
          CheckboxListTile(
            title: Text('Miercoles'),
            value: _operaMiercoles,
            onChanged: (value) {
              setState(() {
                this._operaMiercoles = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text('Jueves'),
            value: _operaJueves,
            onChanged: (value) {
              setState(() {
                this._operaJueves = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text('Viernes'),
            value: _operaViernes,
            onChanged: (value) {
              setState(() {
                this._operaViernes = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text('Sabado'),
            value: _operaSabado,
            onChanged: (value) {
              setState(() {
                this._operaSabado = value!;
              });
            },
          ),
          Container(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(children: [
                Icon(Icons.punch_clock_outlined),
                SizedBox(
                  height: 10.0,
                  width: 10,
                ),
                Text(
                  'Hora de salida:',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                  width: 15,
                ),
                DropdownButtonHour(),
              ])),
          Container(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(children: [
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.route_outlined),
                    hintText: 'Av1, CR2',
                    labelText: 'Describir ruta',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'por favor describa la ruta separado por comas';
                    }
                    return null;
                  },
                ),
              ])),

//////////////////////////////////////////
          Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new RaisedButton(
                child: const Text('Submit'),
                onPressed: () {
                  // It returns true if the form is valid, otherwise returns false
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a Snackbar.
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Data is in processing.')));
                  }
                },
              )),
        ],
      ),
    );
  }
}

class DropdownButtonHour extends StatefulWidget {
  const DropdownButtonHour({super.key});

  @override
  State<DropdownButtonHour> createState() => _DropdownButtonHourState();
}

class _DropdownButtonHourState extends State<DropdownButtonHour> {
  String _dropdownValue = hours.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black87),
      underline: Container(
        height: 2,
        color: Colors.grey,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          _dropdownValue = value!;
        });
      },
      items: hours.map<DropdownMenuItem<String>>((value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
