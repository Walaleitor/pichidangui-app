import 'package:flutter/material.dart';
import 'reserva_card.dart';

class HomeApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomeAppState();
  }
}

class _HomeAppState extends State<HomeApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(31, 178, 101, 100),
        title: Text("Cabañas Pichidangui"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            tooltip: 'Agregar',
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: ListView(
            children: <Widget>[
              ReservaCard("Cabana 1", "Mie 25 - Vier 23", "Febrero", "https://sierragordaecotours.com/wp-content/uploads/2018/09/DSC_0054-web.jpg"),
              ReservaCard("Cabana 1", "Mie 25 - Vier 23", "Febrero", "https://villagemonde.com/wp-content/uploads/2017/04/DSC_0083-min-1200x800.jpg"),
              ReservaCard("Cabana 1", "Mie 25 - Vier 23", "Febrero", "https://sierragordaecotours.com/wp-content/uploads/2018/09/DSC_0054-web.jpg"),
              ReservaCard("Cabana 1", "Mie 25 - Vier 23", "Febrero", "https://sierragordaecotours.com/wp-content/uploads/2018/09/DSC_0054-web.jpg"),
              ReservaCard("Cabana 1", "Mie 25 - Vier 23", "Febrero", "https://villagemonde.com/wp-content/uploads/2017/04/DSC_0083-min-1200x800.jpg"),
              ReservaCard("Cabana 1", "Mie 25 - Vier 23", "Febrero", "https://sierragordaecotours.com/wp-content/uploads/2018/09/DSC_0054-web.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  
}