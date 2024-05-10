import 'package:app/pages/graphic/temperature_data.dart';
import 'package:flutter/material.dart';

class ReportBody extends StatelessWidget {
  const ReportBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<TemperatureData> temperatureDataList = [
      TemperatureData('Cantel', [17, 19, 15, 21, 18, 12, 26]),
      TemperatureData('Concepción C', [17, 19, 15, 21, 18, 15, 12]),
      TemperatureData('Cunoc', [23, 25, 28, 22, 26, 15, 9]),
    ];

    final List<TemperatureData> humidityDataList = [
      TemperatureData('Cantel', [10, 15, 8, 12, 9, 12, 30]),
      TemperatureData('Concepción C', [12, 10, 14, 11, 13, 13, 25]),
      TemperatureData('Cunoc', [8, 11, 9, 10, 12, 15, 16]),
    ];

    final List<TemperatureData> radiationDataList = [
      TemperatureData('Cantel', [5, 10, 7, 8, 6, 22, 15]),
      TemperatureData('Concepción C', [6, 8, 5, 7, 9, 12, 25]),
      TemperatureData('Cunoc', [4, 7, 6, 5, 8, 12, 15]),
    ];

    return Center( // Centra todo el contenido verticalmente
      child: ListView(
        shrinkWrap: true, // Para que el ListView ocupe solo el espacio que necesita
        children: [
          _buildTable('Temperatura', temperatureDataList),
          _buildTable('Humedad', humidityDataList),
          _buildTable('Radiación', radiationDataList),
        ],
      ),
    );
  }

  Widget _buildTable(String title, List<TemperatureData> data) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: DataTable(
              columnSpacing: 30,
              headingRowHeight: 40,
              dataRowHeight: 30,
              columns: [
                DataColumn(label: Text('Día')),
                for (int i = 0; i < data.length; i++)
                  DataColumn(
                    label: Text(
                      data[i].location,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
              ],
              rows: List.generate(
                7, //Ya que los valores son de 7 dias segun el ing
                (index) => DataRow(
                  cells: [
                    DataCell(Text('Día ${index + 1}')),
                    for (int i = 0; i < data.length; i++)
                      DataCell(Text('${data[i].temperatures[index]}')),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


