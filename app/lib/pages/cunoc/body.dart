import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SalesData {
  final String year;
  final int sales;

  SalesData(this.year, this.sales);
}

class CunocBody extends StatelessWidget {
  const CunocBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nombreElementos = [
      "Fecha y Hora",
      "Temperatura",
      "Humedad",
      "Radiacion",
      "Suelo 1",
      "Suelo 2",
      "Suelo 3",
      "Velocidad del Viento",
      "Precipitacion",
    ];
    final List<IconData> iconos = [
      Icons.access_time,
      Icons.thermostat,
      Icons.water_drop,
      Icons.wb_sunny,
      Icons.landscape,
      Icons.landscape,
      Icons.landscape,
      Icons.navigation,
      Icons.cloud,
    ];

    final List<SalesData> data = [
      SalesData('2016', 100),
      SalesData('2017', 75),
      SalesData('2018', 150),
      SalesData('2019', 200),
    ];

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 20), 
          const Center(
            child: Text(
              'Informacion de la estacion CUNOC', 
              style: TextStyle(fontSize: 25),
            ),
          ),
          const SizedBox(height: 20), 
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Table(
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
                          'Informacion', 
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Datos', 
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                for (int i = 0; i < 9; i++)
                  TableRow(
                    children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(iconos[i], color: Colors.blue),
                              const SizedBox(width: 8),
                              Text(nombreElementos[i], style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Datos', style: TextStyle(fontStyle: FontStyle.italic)),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
// Espacio
          const SizedBox(height: 20), 
          const Center(
            child: Text('Visualizacion de Suelos', style: TextStyle(fontSize: 25)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3, 
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 100,
                  barTouchData: BarTouchData(enabled: false),
                  titlesData: FlTitlesData(
                    bottomTitles: SideTitles(
                      showTitles: true,
                      getTextStyles: (value) => TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      margin: 20,
                      getTitles: (value) {
                        switch (value.toInt()) {
                          case 0:
                            return 'Suelo 1';
                          case 1:
                            return 'Suelo 2';
                          case 2:
                            return 'Suelo 3';
                          default:
                            return '';
                        }
                      },
                    ),
                      leftTitles: SideTitles(
                      showTitles: true,
                      getTextStyles: (value) => TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      getTitles: (value) {
                        if (value % 20 == 0) {
                          return value.toInt().toString();
                        }
                        return '';
                      },
                      margin: 8,
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  barGroups: [
                    BarChartGroupData(x: 0, barRods: [BarChartRodData(y: 70)]),
                    BarChartGroupData(x: 1, barRods: [BarChartRodData(y: 50)]),
                    BarChartGroupData(x: 2, barRods: [BarChartRodData(y: 80)]),
                  ],
                ),
              ),
            ),
          ),
           // espacio
          const SizedBox(height: 20),
          const Center(
            child: Text('Direccion del viento', style: TextStyle(fontSize: 25)),
          ),
          Center(
            child: SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  minimum: 0,
                  maximum: 360,
                  startAngle: 270,
                  endAngle: 270,
                  showLabels: false,
                  showTicks: true,
                  radiusFactor: 0.8,
                  majorTickStyle: MajorTickStyle(length: 20),
                  axisLineStyle: AxisLineStyle(
                    thickness: 20,
                    color: Colors.orange[700],
                  ),
                  pointers: <GaugePointer>[
                    NeedlePointer(
                      value: 163,
                      enableAnimation: true,
                      needleLength: 0.9,
                      lengthUnit: GaugeSizeUnit.factor,
                      needleStartWidth: 1,
                      needleEndWidth: 5,
                      knobStyle: KnobStyle(
                        knobRadius: 0.1,
                      ),
                    ),
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                      angle: 270, 
                      positionFactor: 0.5, 
                      widget: Text(
                        'N',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    GaugeAnnotation(
                      angle: 0, 
                      positionFactor: 0.5, 
                      widget: Text(
                        'E',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    GaugeAnnotation(
                      angle: 180, 
                      positionFactor: 0.5, 
                      widget: Text(
                        'O',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    GaugeAnnotation(
                      angle: 90, 
                      positionFactor: 0.5, 
                      widget: Text(
                        'S',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
