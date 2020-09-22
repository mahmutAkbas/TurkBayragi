import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Türk Bayrağı',
        theme: ThemeData(
          backgroundColor: Colors.blue,
        ),
        home: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            bayrak(G: 50),
            bayrak(G: 100),
            bayrak(G: 150),
            bayrak(G: 200),
          ],
        )));
  }

  Container bayrak({double G}) {
    return Container(
      width: 1.5 * G,
      height: G,
      color: Colors.red,
      child: Stack(
        children: <Widget>[
          buyukDaire(G: G),
          kucukDaire(G: G),
          yildiz(boyut: G),
        ],
      ),
    );
  }
}

Widget buyukDaire({double G}) {
  return Positioned(
      top: 0.25 * G,
      left: 0.25 * G,
      child: Container(
        width: 0.5 * G,
        height: 0.5 * G,
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      ));
}

Widget kucukDaire({double G}) {
  return Positioned(
      top: 0.3 * G,
      left: 0.3625 * G,
      child: Container(
        width: 0.4 * G,
        height: 0.4 * G,
        decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
      ));
}

Widget yildiz({double boyut}) {
  return Positioned(
    left: 0.95 * boyut,
    top: 0.495 * boyut,
    child: Transform(
      transform: Matrix4.rotationZ(-4),
      child: Icon(
        Icons.star,
        color: Colors.white,
        size: 0.25 * boyut,
      ),
    ),
  );
}
