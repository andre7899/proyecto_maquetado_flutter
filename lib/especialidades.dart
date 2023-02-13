import 'package:flutter/material.dart';
import 'main.dart';

class Especialidades extends StatefulWidget {
  const Especialidades({super.key, required this.title});

  final String title;

  @override
  State<Especialidades> createState() => _EspecialidadesState();
}

class _EspecialidadesState extends State<Especialidades> {
  final List _especialidadess = [
    Especialidad(
      'Medicina General',
      Image.asset('Assets/Images/medicina_general.jpg'),
    ),
    Especialidad(
      'Radiologia',
      Image.asset('Assets/Images/medicina_general.jpg'),
    ),
    Especialidad(
      'Urología',
      Image.asset('Assets/Images/medicina_general.jpg'),
    ),
    Especialidad(
      'Traumatología y Ortopedia',
      Image.asset('Assets/Images/medicina_general.jpg'),
    ),
    Especialidad(
      'Reumatología',
      Image.asset('Assets/Images/medicina_general.jpg'),
    ),
    Especialidad(
      'Psicología',
      Image.asset('Assets/Images/medicina_general.jpg'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barraSuperior(widget),
      drawer: obtenerMenu(context),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        // color: Colors.amber,
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Input'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        'Buscador de especialidad',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _especialidad('Medicina General'),
                  _especialidad('Radiología'),
                  _especialidad('Urología'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _especialidad('Traumatología y Ortopedia'),
                  _especialidad('Reumatología'),
                  _especialidad('Psicología'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _especialidad(String _nombreEspecialidad) {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),

        // width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // color: Colors.red,
              width: 250,
              child: Column(
                children: [
                  Text(
                    _nombreEspecialidad,
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    height: 130,
                    width: 200,
                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(50)),
                    child: Image.asset('Assets/Images/medicina_general.jpg'),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/medicinageneral');
                        },
                        child: Text(
                          'Más informacion >> ',
                        ),
                      ),
                    ],
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

Widget obtenerMenu(var context) {
  return Drawer(
    width: 200,
    child: Column(
      children: [
        Container(
          width: 170,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Sistema hospitalario',
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Principal'),
                ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                child: Column(children: [
                  TextButton(
                    style: TextButton.styleFrom(
                        // backgroundColor: Colors.red,
                        // foregroundColor: Colors.amber,
                        padding: EdgeInsets.all(20)),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 15,
                          color: Colors.black,
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          'Dashboard',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  TextButton(
                    style: TextButton.styleFrom(
                        // backgroundColor: Colors.red,
                        // foregroundColor: Colors.amber,
                        padding: EdgeInsets.all(20)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/miperfil');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.change_history,
                          size: 15,
                          color: Colors.black,
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          'Mi Perfil',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  TextButton(
                    style: TextButton.styleFrom(
                        // backgroundColor: Colors.red,
                        // foregroundColor: Colors.amber,
                        padding: EdgeInsets.all(20)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/especialidades');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 15,
                          color: Colors.black,
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          'Especialidades',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  TextButton(
                    style: TextButton.styleFrom(
                        // backgroundColor: Colors.red,
                        // foregroundColor: Colors.amber,
                        padding: EdgeInsets.all(20)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/pacientes');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 15,
                          color: Colors.black,
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          'Pacientes',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Sesión'),
                ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                child: Column(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          // backgroundColor: Colors.red,
                          // foregroundColor: Colors.amber,
                          padding: EdgeInsets.all(20)),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.square,
                            size: 15,
                            color: Colors.black,
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          Text(
                            'Configuración',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    TextButton(
                      style: TextButton.styleFrom(
                          // backgroundColor: Colors.red,
                          // foregroundColor: Colors.amber,
                          padding: EdgeInsets.all(20)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.square,
                            size: 15,
                            color: Colors.black,
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          Text(
                            'Cerrar Sesión',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

PreferredSizeWidget barraSuperior(var widget) {
  return AppBar(
    centerTitle: true,
    title: Text(widget.title),
    backgroundColor: Color.fromARGB(255, 1, 90, 194),
    toolbarHeight: 40,
    actions: [
      IconButton(
          onPressed: () {
            null;
          },
          icon: Icon(
            Icons.account_circle_outlined,
            color: Colors.white,
            fill: 1,
          ))
    ],
  );
}

class Especialidad {
  String nombre;
  Image imagen;
  Especialidad(this.nombre, this.imagen);
}
