import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  const BotonesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
        ),
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ],
          ),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -70.0,
          child: cajaRosa,
        )
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Classify this transaction into a particular caterogy',
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
                  caption: TextStyle(
                color: Color.fromRGBO(116, 117, 152, 1.0),
              ))),
      child: BottomNavigationBar(
        // fixedColor: Colors.pink,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
                size: 30.0,
              ),
              title: Container()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pie_chart_outlined,
                size: 30.0,
              ),
              title: Container()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.supervised_user_circle,
                size: 30.0,
              ),
              title: Container()),
        ],
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: <TableRow>[
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.pinkAccent, Icons.camera_alt, 'Texto'),
            _crearBotonRedondeado(Colors.pinkAccent, Icons.camera_alt, 'Texto'),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.pinkAccent, Icons.camera_alt, 'Texto'),
            _crearBotonRedondeado(Colors.pinkAccent, Icons.camera_alt, 'Texto'),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.pinkAccent, Icons.camera_alt, 'Texto'),
            _crearBotonRedondeado(Colors.pinkAccent, Icons.camera_alt, 'Texto'),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.pinkAccent, Icons.camera_alt, 'Texto'),
            _crearBotonRedondeado(Colors.pinkAccent, Icons.camera_alt, 'Texto'),
          ],
        ),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {
    return 
      
      Container(
        height: 180.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(height: 5.0),
            CircleAvatar(
              backgroundColor: color,
              radius: 35.0,
              child: Icon(icono, color: Colors.white, size: 30.0),
            ),
            Text(texto, style: TextStyle(color: color)),
            SizedBox(height: 5.0)
          ],
        ),
      );
  }
}
