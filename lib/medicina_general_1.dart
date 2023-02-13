import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'especialidades.dart';

class MedicinaGeneral_1 extends StatefulWidget {
  const MedicinaGeneral_1({super.key, required this.title});

  final String title;

  @override
  State<MedicinaGeneral_1> createState() => _MedicinaGeneral_1State();
}

class _MedicinaGeneral_1State extends State<MedicinaGeneral_1> {
  TimeOfDay? _time = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barraSuperior(widget),
      drawer: obtenerMenu(context),
      body: Center(
        child: Container(
          // color: Colors.red,
          width: MediaQuery.of(context).size.width * 0.85,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 7,
                margin: EdgeInsets.only(top: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Padding(padding: EdgeInsets.all(10)),
                            Text(
                              'Médico encargado 01',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 72, 154),
                                fontSize: 25,
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              'CMP:11111',
                              style: TextStyle(
                                color: Colors.cyan,

                                // fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            //
                            // El texto sobrepasa
                            Text(
                              'Experiencia Laboral :\n'
                              'MÉDICO DE MEDICINA GENERAL \– CLÍNICA DE ESPECIALIDADES'
                              'MÉDICAS (1994 \– A LA FECHA)\nMÉDICO DE MEDICINA GENERAL Y PEDIATRÍA  \– RIMAC (2002 \– 2005)\n'
                              'Estudios (Especialidad) :\n'
                              '\-\n'
                              'Estudios (Pre Grado) :\n'
                              'MEDICINA HUMANA – UNIVERSIDAD SAN MARTÍN DE PORRES (1993)',
                              overflow: TextOverflow.fade,
                            ),
                            Padding(padding: EdgeInsets.all(10)),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Image.asset(
                          'Assets/Images/medicina_general.jpg',
                          width: 200,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Row(
                children: [
                  Text(
                    ' Horarios ',
                    style: TextStyle(color: Colors.cyan),
                  ),
                  Expanded(
                      child: Divider(
                    indent: 10,
                    color: Colors.blue,
                    endIndent: 10,
                    height: 40,
                  )),
                ],
              ),
              Row(
                children: const [
                  Text(
                    ' Lunes: 8:00 AM – 2:20 PM ',
                    style: TextStyle(color: Colors.cyan),
                  ),
                  Text(
                    '|',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    ' Martes: 8:00 AM – 3:40 PM ',
                    style: TextStyle(color: Colors.cyan),
                  ),
                  Text(
                    '|',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    ' Miércoles: 8:00 AM – 2:20 PM ',
                    style: TextStyle(color: Colors.cyan),
                  ),
                  Text(
                    '|',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    ' Jueves: 8:00 AM – 2:20 PM ',
                    style: TextStyle(color: Colors.cyan),
                  ),
                  Text(
                    '|',
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    ' Viernes: 8:00 AM – 8:00 PM ',
                    style: TextStyle(color: Colors.cyan),
                  ),
                ],
              ),
              Row(
                children: [
                  Text('Calendario1'),
                  Text('Calendario2'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        _seleccionarHora();
                      },
                      icon: Icon(Icons.access_alarm)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

//SELECCIONADOR DE FECHA
  Future _seleccionarHora() async {
    TimeOfDay? _horaSeleccionada = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    setState(() {
      if (_horaSeleccionada != null) {
        _time = _horaSeleccionada;
      }
    });
  }
}
