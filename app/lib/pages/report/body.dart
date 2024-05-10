import 'package:flutter/material.dart';
import 'package:app/pages/graphic/temperature_data.dart';

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

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'Información de los últimos 7 días',
              style: TextStyle(fontSize: 25),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _buildTable('Temperatura', temperatureDataList),
                _buildTable('Humedad', humidityDataList),
                _buildTable('Radiación', radiationDataList),
              ],
            ),
          ),
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
            child: Table(
              columnWidths: {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
              },
              border: TableBorder.all(color: Colors.grey),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                  ),
                  children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Día',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Cantel',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Concepción C',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Cunoc',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                for (int i = 0; i < 7; i++)
                  TableRow(
                    children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${i + 1}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      for (int j = 0; j < data.length; j++)
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '${data[j].temperatures[i]}',
                            ),
                          ),
                        ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
