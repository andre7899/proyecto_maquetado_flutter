import 'package:flutter/material.dart';
import 'especialidades.dart';

class Pacientes extends StatefulWidget {
  const Pacientes({super.key, required this.title});

  final String title;

  @override
  State<Pacientes> createState() => _PacientesState();
}

class _PacientesState extends State<Pacientes> {
  final List<PacienteRegistrado> _pacienteRegistradoList = [
    PacienteRegistrado('1', 'Nombre paciente 01', '60343231',
        'HistorialMédico.pdf', '04 Citas pendientes'),
    PacienteRegistrado('1', 'Nombre paciente 01', '60343231',
        'HistorialMédico.pdf', '04 Citas pendientes'),
    PacienteRegistrado('1', 'Nombre paciente 01', '60343231',
        'HistorialMédico.pdf', '04 Citas pendientes'),
    PacienteRegistrado('1', 'Nombre paciente 01', '60343231',
        'HistorialMédico.pdf', '04 Citas pendientes'),
    PacienteRegistrado('1', 'Nombre paciente 01', '60343231',
        'HistorialMédico.pdf', '04 Citas pendientes'),
    PacienteRegistrado('1', 'Nombre paciente 01', '60343231',
        'HistorialMédico.pdf', '04 Citas pendientes'),
    PacienteRegistrado('1', 'Nombre paciente 01', '60343231',
        'HistorialMédico.pdf', '04 Citas pendientes'),
    PacienteRegistrado('1', 'Nombre paciente 01', '60343231',
        'HistorialMédico.pdf', '04 Citas pendientes'),
    PacienteRegistrado('1', 'Nombre paciente 01', '60343231',
        'HistorialMédico.pdf', '04 Citas pendientes'),
    PacienteRegistrado('1', 'Nombre paciente 01', '60343231',
        'HistorialMédico.pdf', '04 Citas pendientes'),
  ];

  Widget _buildTablePaciente({bool sortAscending = true}) {
    return DataTable(
      // sortColumnIndex: 0,
      // sortAscending: sortAscending,
      // onSelectAll: (value) {},
      headingRowColor:
          MaterialStateProperty.all(Color.fromARGB(255, 83, 95, 121)),
      headingTextStyle: TextStyle(color: Colors.white),

      columns: [
        DataColumn(
          label: Text('N°'),
          // numeric: true,
        ),
        DataColumn(
          label: Text('Nombre y Apellido'),
        ),
        DataColumn(
          label: Text('DNI'),
        ),
        DataColumn(
          label: Text('Historial Médico'),
        ),
        DataColumn(
          label: Text('Citas pendientes'),
        ),
        DataColumn(
          label: Text('         '),
        ),
      ],
      rows: _pacienteRegistradoList.map((PacienteRegistrado e) {
        return DataRow(
          // key: Key('e.nro'),
          // onSelectChanged: (value) {},
          cells: [
            DataCell(Text(e.nro)),
            DataCell(Text(e.nombreApellido)),
            DataCell(Text(e.dni)),
            DataCell(TextButton(
                onPressed: () {},
                child: Text(
                  e.historialMedico,
                  style: TextStyle(decoration: TextDecoration.underline),
                ))),
            DataCell(Text(e.citasPendientes)),
            DataCell(
              Row(
                children: [
                  IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit_outlined,
                      color: Colors.purple,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(2)),
                  IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete_sweep_outlined,
                      color: Colors.purple,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(2)),
                  IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility_outlined,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barraSuperior(widget),
      drawer: obtenerMenu(context),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.purple,
        tooltip: 'Añadir paciente',
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Este boton no tiene funcionalidad!'),
              duration: Duration(seconds: 3),
              backgroundColor: Colors.red,
              action: SnackBarAction(
                label: 'Cerrar',
                textColor: Colors.white,
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
              ),
            ),
          );
        },
        label: Container(
          child: Row(children: [
            Icon(Icons.add),
            Text('Paciente'),
          ]),
        ),
      ),
      body: Center(
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            // color: Colors.red,
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.85,
            child: _buildTablePaciente(),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class PacienteRegistrado {
  String nro;
  String nombreApellido;
  String dni;
  String historialMedico;
  String citasPendientes;

  PacienteRegistrado(this.nro, this.nombreApellido, this.dni,
      this.historialMedico, this.citasPendientes);
}
