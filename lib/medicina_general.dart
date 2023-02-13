import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'main.dart';
import 'especialidades.dart';

class MedicinaGeneral extends StatefulWidget {
  const MedicinaGeneral({super.key, required this.title});

  final String title;

  @override
  State<MedicinaGeneral> createState() => _MedicinaGeneralState();
}

class _MedicinaGeneralState extends State<MedicinaGeneral> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 7,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      // Padding(padding: EdgeInsets.all(10)),
                      Row(
                        children: [
                          Text(
                            'Sobre la Especialidad',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 72, 154),
                              fontSize: 25,
                              // fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'La Medicina General es el primer nivel de atención médica. La consulta está orientada al abordaje integral del paciente en su aspecto físico, ' +
                            'mental y social.\n\n' +
                            'Dependiendo del caso se procede a la identificación de factores de riesgo para enfermedades latentes o potenciales en corto, mediano y ' +
                            'largo plazo; orientando al paciente sobre la manera más adecuada de prevenirlas e incentivando estilos de vida saludables.\n\n' +
                            'El médico general es el profesional capacitado para realizar el diagnóstico y tratamiento de diferentes patologías comunes de manera' +
                            'ambulatoria y derivar al especialista indicado cuando corresponda',
                        overflow: TextOverflow.fade,
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Row(
                children: [
                  Text(
                    'Horarios ',
                    style: TextStyle(color: Colors.cyan),
                  ),
                  Expanded(
                      child: Divider(
                    indent: 10,
                    color: Colors.blue,
                    height: 10,
                    endIndent: 10,
                  )),
                ],
              ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                // color: Colors.red,
                width: MediaQuery.of(context).size.width * 0.85,
                // padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _medico('Medico Encargado 01', 'CMP:11111'),
                    _medico('Medico Encargado 02', 'CMP:22222'),
                    _medico('Medico Encargado 03', 'CMP:33333'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _medico(String nombreMedico, String codigoMedico) {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        // color: Colors.green,
        padding: EdgeInsets.all(10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    'Assets/Images/medicina_general.jpg',
                    width: 120,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    'Assets/Images/codigo_qr.png',
                    width: 120,
                  ),
                ),
              ],
            ),
            Text(nombreMedico),
            SizedBox(
              height: 20,
            ),
            Text(
              codigoMedico,
              style: TextStyle(
                color: Colors.cyan,
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/medicinageneral1');
                  },
                  child: Text(
                    'Ver Horarios',
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
