import 'package:flutter/material.dart';
import 'package:tabs/tabs/ayuda_tabs.dart';
import 'package:tabs/tabs/inicio_tabs.dart';
import 'package:tabs/tabs/lugares_tabs.dart';
import 'package:tabs/tabs/registro_tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TabController = new DefaultTabController(
      length: 4, //numero e iconos o tabs de la barra 
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('Navegacion por Tabs'),
          bottom: new TabBar(indicatorColor: Colors.blue,tabs: <Widget>[
            new Tab(icon: new Icon(Icons.home),text: "Inicio",),
            new Tab(icon: new Icon(Icons.contacts),text: "Registro",),
            new Tab(icon: new Icon(Icons.place),text: "Lugares",),
            new Tab(icon: new Icon(Icons.help),text: "Ayuda",)
          ]),
        ),
        body: new TabBarView(
          children: <Widget>[
            new InicioTabs(),
            new RegistroTabs(),
            new LugaresTabs(),
            new AyudaTabs(),
          ],
        ),
      ),
    );
    return new MaterialApp(
      title: 'Tabs con Flutter',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabController,
    );
  }
}