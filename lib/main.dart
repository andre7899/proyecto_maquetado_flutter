import 'package:flutter/material.dart';
import 'package:proyecto_maquetado/especialidades.dart';
import 'package:proyecto_maquetado/medicina_general.dart';
import 'package:proyecto_maquetado/medicina_general_1.dart';
import 'package:proyecto_maquetado/miperfil.dart';
import 'package:proyecto_maquetado/pacientes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Proyecto Maquetado',
      home: const MyHomePage(title: 'Pagina de login'),
      //RUTAS DE LAS PAGINAS
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => MyHomePage(
              title: 'Pagina1',
            ),
        '/especialidades': (BuildContext context) => Especialidades(
              title: 'Especialidades',
            ),
        '/miperfil': (BuildContext context) => MiPerfil(
              title: 'Mi Perfil',
            ),
        '/pacientes': (BuildContext context) => Pacientes(
              title: 'Pacientes',
            ),
        '/medicinageneral': (BuildContext context) => MedicinaGeneral(
              title: 'Medicina General',
            ),
        '/medicinageneral1': (BuildContext context) => MedicinaGeneral_1(
              title: 'Medicina General',
            ),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.star_border,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'SISTEMA HOSPITALARIO',
              style: TextStyle(fontSize: 40),
            ),
            Padding(padding: EdgeInsets.all(15)),
            Image.asset(
              'Assets/Images/imagen_login.png',
              width: MediaQuery.of(context).size.width * 0.25,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.25,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(hintText: 'Usuario'),
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  TextField(
                    decoration: InputDecoration(hintText: 'Contraseña'),
                    obscureText: true,
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/especialidades');
                      },
                      child: Text('INGRESAR'),
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        backgroundColor: Color.fromARGB(255, 0, 72, 154),

                        // shadowColor: Colors.amberAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
