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
        home: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TurkBayrak(G: 50),
            TurkBayrak(G: 100),
            TurkBayrak(G: 150),
            TurkBayrak(G: 200)
          ],
        ));
  }
}

class TurkBayrak extends StatelessWidget {
  final double G;
  TurkBayrak({this.G});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.5 * G,
      height: G,
      color: Colors.red,
      child: Stack(
        overflow: Overflow.clip,
        children: <Widget>[
          //Büyük Daire
          Positioned(
              top: 0.25 * G,
              left: 0.25 * G,
              child: Container(
                width: 0.5 * G,
                height: 0.5 * G,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              )),
          //Küçük Daire
          Positioned(
              top: 0.3 * G,
              left: 0.3625 * G,
              child: Container(
                width: 0.4 * G,
                height: 0.4 * G,
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              )),
          //Yıldız
          Positioned(
            left: 0.95 * G,
            top: 0.495 * G,
            child: Transform(
              transform: Matrix4.rotationZ(-4),
              child: Icon(
                Icons.star,
                color: Colors.white,
                size: 0.25 * G,
              ),
            ),
          )
        ],
      ),
    );
  }
}
