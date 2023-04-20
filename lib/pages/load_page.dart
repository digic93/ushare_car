import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoadPage extends StatelessWidget {
  const LoadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ushare Car App",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: Color(0xFF004C1A),
        ),
        body: Padding(
            padding: EdgeInsets.all(30),
            child: Center(
              child: Column(children: [
                CircularProgressIndicator(
                  color: Color(0xFF004C1A),
                ),
                Text("Cargando ...",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    )),
              ]),
            )));
  }
}
