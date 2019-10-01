import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          _crearImagen(),
          _construirTitulo(),
          SizedBox(
            height: 5.0,
          ),
          _crearAcciones(),
          _crearDescripcion(),
          _crearDescripcion(),
          _crearDescripcion(),
        ]),
      ),
    );
  }

  Widget _crearImagen() {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Image(
          image: NetworkImage(
              'https://images.pexels.com/photos/414171/pexels-photo-414171.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _construirTitulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Titulo de la imagen',
                  style: estiloTitulo,
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  'Descripción de la imagen',
                  style: estiloSubtitulo,
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 30.0,
          ),
          Text(
            '41',
            style: TextStyle(fontSize: 20.0),
          )
        ],
      ),
    );
  }

  Widget _crearAcciones() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _accion('CALL', Icons.call),
          _accion('ROUTE', Icons.near_me),
          _accion('SHARE', Icons.share),
        ],
      ),
    );
  }

  Widget _accion(String descripcion, IconData icono) {
    return Column(
      children: <Widget>[
        Icon(
          icono,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          descripcion,
          style: TextStyle(color: Colors.blue, fontSize: 20.0),
        )
      ],
    );
  }

  Widget _crearDescripcion() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Text(
        'Tempor nulla ipsum sunt aliqua fugiat irure ea ea aliquip dolor sit. Commodo cupidatat fugiat ad adipisicing occaecat cupidatat mollit nisi. Fugiat anim velit reprehenderit sunt. Reprehenderit Lorem incididunt ut fugiat laborum minim pariatur. Non aute officia anim deserunt voluptate aliquip.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
