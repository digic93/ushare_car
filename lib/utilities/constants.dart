import 'package:flutter/material.dart';

final appName = 'Ushare App';
final baseUrl = "evaluation-9533a-default-rtdb.firebaseio.com";

final kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color.fromRGBO(36, 97, 57, 1),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

final backgroundDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color(0xFF007F2B),
      Color(0xFF246139),
      Color(0xFF004C1A),
      Color(0xFF003311),
    ],
    stops: [0.0, 0.4, 0.7, 0.9],
    begin: Alignment(-1.0, -2.0),
    end: Alignment(1, 1.0),
  ),
);

final simpleTextStyle = TextStyle(
  color: Color.fromARGB(137, 0, 0, 0),
  fontFamily: 'OpenSans',
);

final simpleDecorationStyle = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 5),
    ),
  ],
);

final primaryColor = Color(0xFF004C1A);
