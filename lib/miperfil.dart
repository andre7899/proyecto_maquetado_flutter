import 'package:flutter/material.dart';
import 'especialidades.dart';

class MiPerfil extends StatefulWidget {
  const MiPerfil({super.key, required this.title});

  final String title;

  @override
  State<MiPerfil> createState() => _MiPerfilState();
}

class _MiPerfilState extends State<MiPerfil> {
  //Elemento de nuestra tabla de citas programadas
  final List<CitasProgramadas> _citasProgList = [
    CitasProgramadas('1', '18/02/2023', '10:30 AM', 'Medicina General',
        'Doctor encargado 01', 'Pabellón 03 - 4to Piso - Hab. 404'),
    CitasProgramadas('2', '27/03/2023', '10:30 AM', 'Psicología',
        'Doctor encargado 03', 'Pabellón 01 - 2do Piso - Hab. 201'),
  ];
  final List<CitasAnteriores> _citasAntList = [
    CitasAnteriores('1', '18/02/2023', 'Medicina General',
        'Doctor encargado 01', 'Resfriado Común', 'receta.pdf'),
  ];

  //widget de la tabla de citas programadas
  Widget _buildTableProg({bool sortAscending = true}) {
    return DataTable(
      // sortColumnIndex: 0,
      // sortAscending: sortAscending,
      // onSelectAll: (value) {},
      columns: [
        DataColumn(
          label: Text('Nro'),
          // numeric: true,
        ),
        DataColumn(
          label: Text('Día'),
        ),
        DataColumn(
          label: Text('Hora'),
        ),
        DataColumn(
          label: Text('Especialidad'),
        ),
        DataColumn(
          label: Text('Doctor'),
        ),
        DataColumn(
          label: Text('Ubicación'),
        ),
        DataColumn(
          label: Text('         '),
        ),
      ],
      rows: _citasProgList.map((CitasProgramadas e) {
        return DataRow(
          // key: Key('e.nro'),
          // onSelectChanged: (value) {},
          cells: [
            DataCell(
              Text(e.nro),
            ),
            DataCell(
              Text(e.fecha),
            ),
            DataCell(Text(e.hora)),
            DataCell(
              Text(e.especialidad),
            ),
            DataCell(
              Text(e.nombreDoctor),
            ),
            DataCell(
              Text(e.ubicacion),
            ),
            DataCell(
              Row(
                children: [
                  IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.purple,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(2)),
                  IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete_sweep,
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

  Widget _buildTableAnt({bool sortAscending = true}) {
    return DataTable(
      // sortColumnIndex: 0,
      // sortAscending: sortAscending,
      // onSelectAll: (value) {},
      columns: [
        DataColumn(
          label: Text('Nro'),
          // numeric: true,
        ),
        DataColumn(
          label: Text('Día'),
        ),
        DataColumn(
          label: Text('Especialidad'),
        ),
        DataColumn(
          label: Text('Doctor'),
        ),
        DataColumn(
          label: Text('Diagnóstico'),
        ),
        DataColumn(
          label: Text('Receta'),
        ),
        DataColumn(
          label: Text('       '),
        ),
      ],
      rows: _citasAntList.map((CitasAnteriores e) {
        return DataRow(
          // key: Key('e.nro'),
          // onSelectChanged: (value) {},
          cells: [
            DataCell(
              Text(e.nro),
            ),
            DataCell(
              Text(e.fecha),
            ),
            DataCell(
              Text(e.especialidad),
            ),
            DataCell(
              Text(e.nombreDoctor),
            ),
            DataCell(
              Text(e.diagnostico),
            ),
            DataCell(
              TextButton(
                onPressed: () {},
                child: Text(
                  e.receta,
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ),
            DataCell(
              IconButton(
                splashRadius: 20,
                onPressed: () {},
                icon: Icon(
                  Icons.download_outlined,
                  color: Colors.black,
                ),
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
      body: Center(
        child: Container(
          // color: Colors.red,
          width: MediaQuery.of(context).size.width * 0.85,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'Assets/Images/codigo_qr.png',
                    width: 100,
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Image.asset(
                    'Assets/Images/codigo_qr.png',
                    width: 100,
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(5)),
              Row(
                children: [
                  Text(
                    ' Citas Programadas (2) ',
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
              Padding(padding: EdgeInsets.all(5)),
              _buildTableProg(),
              Padding(padding: EdgeInsets.all(5)),
              Row(
                children: [
                  Text(
                    ' Citas Anteriores (1) ',
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
              _buildTableAnt(),
            ],
          ),
        ),
      ),
    );
  }
}

class CitasProgramadas {
  String nro;
  String fecha;
  String hora;
  String especialidad;
  String nombreDoctor;
  String ubicacion;

  CitasProgramadas(this.nro, this.fecha, this.hora, this.especialidad,
      this.nombreDoctor, this.ubicacion);
}

class CitasAnteriores {
  String nro;
  String fecha;

  String especialidad;
  String nombreDoctor;
  String diagnostico;
  String receta;

  CitasAnteriores(this.nro, this.fecha, this.especialidad, this.nombreDoctor,
      this.diagnostico, this.receta);
}
