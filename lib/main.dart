import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeApp());
  }
}

class HomeApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeAppState();
  }
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
          child: Column(
            children: <Widget>[_dibujarContenedor()],
          ),
        ),
      ),
    );
  }

  Widget _dibujarContenedor() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0)
        ),
        borderOnForeground: true,
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: _dibujarInterior(),
        )
        )
      );
    
  }

  Widget _dibujarInterior() {
    return Stack(
      children: <Widget>[
        Image.network(
          "https://www.ecestaticos.com/imagestatic/clipping/136/649/136649f8e2860ea92b2ed8811039dd77/imagen-sin-titulo.jpg?mtime=1543236555",
          fit: BoxFit.fill,
        ),
        Positioned(
          bottom: 25,
          left: 20,
          child: Text(
            "Cabaña delantera",
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,

            ),
          ),
        ),
        Positioned(
          top: 15.0,
          right: 20.0,
          child: Text(
            'Mie 05 - Vie 07',
            style: TextStyle(
              fontSize: 19.0,
              color: Colors.white
            ),
            ),
        ),
        Positioned(
          top: 35.0,
          right: 35.0,
          child: Text(
            'Febrero',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white
            ),
            ),
        ),
      ],
    );
  }
}
