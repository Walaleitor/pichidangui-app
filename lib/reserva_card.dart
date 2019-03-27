import 'package:flutter/material.dart';

class ReservaCard extends StatelessWidget {
  final String _nombreCabana;
  final String _fechasReserva;
  final String _mes;
  final String _imagenCabana;

  ReservaCard(
      this._nombreCabana, this._fechasReserva, this._mes, this._imagenCabana);

  @override
  Widget build(BuildContext context) {
    print(_imagenCabana);
    return Container(
      height: 200.0,
      width: MediaQuery.of(context).size.width * 0.95,
      child: _dibujarContenedor(),
    );
  }

  Widget _dibujarContenedor() {
    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        borderOnForeground: true,
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: _dibujarInterior(),
        ));
  }

  Widget _dibujarInterior() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.network(
          _imagenCabana,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 25,
          left: 20,
          child: Text(
            _nombreCabana,
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
            _fechasReserva,
            style: TextStyle(fontSize: 19.0, color: Colors.white),
          ),
        ),
        Positioned(
          top: 35.0,
          right: 35.0,
          child: Text(
            _mes,
            style: TextStyle(fontSize: 24.0, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
