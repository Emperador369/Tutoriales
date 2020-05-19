import 'package:flutter/material.dart';

class LugaresTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          // se agrega una imagen al tabs
          new Container(
            margin: const EdgeInsets.all(10.0), // margenes por todos los lados
            width: 350.0, // ancho de la imagen
            height: 350.0, // largo de la imagen
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("assets/images/isla.jpg"),
              fit: BoxFit.cover
              ),
            ),
          ),
        ],
      )
    );
  }
}