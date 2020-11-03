import 'package:flutter/material.dart';

void main() => runApp(EstudianteApp());

class EstudianteApp extends StatelessWidget {
  const EstudianteApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Estudiante App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("EstudianteApp"), backgroundColor: Colors.cyan),
      body: cuerpoInicio(),
    );
  }
}

Widget cuerpoInicio() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/originals/29/1b/3e/291b3e8139b2034eb043e96741f3efa1.jpg"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextoInicio(),
          UsuarioInicio(),
          ContraInicio(),
          SizedBox(height: 20.0),
          BotonInicio(),
        ],
      ),
    ),
  );
}

Widget TextoInicio() {
  return Text(
    "Logueate Mierda",
    style: TextStyle(
        color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
  );
}

Widget UsuarioInicio() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Usuario",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget ContraInicio() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Contraseña",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget BotonInicio() {
  return FlatButton(
    color: Colors.pinkAccent,
    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 100),
    onPressed: () {},
    child: Text(
      "Entrar",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
    ),
  );
}
