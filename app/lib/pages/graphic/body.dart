import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'temperature_data.dart';

class GraphicReportBody extends StatelessWidget {
  const GraphicReportBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<TemperatureData> temperatureDataList = [
      TemperatureData('Cantel', [17, 19, 15, 21, 18, 12, 26]),
      TemperatureData('Concepcion Chiquirichapa', [17, 19, 15, 21, 18, 15, 12]),
      TemperatureData('Centro Universitario de Occidente', [23, 25, 28, 22, 26, 15, 9]),
    ];

    final List<TemperatureData> humidityDataList = [
      TemperatureData('Cantel', [10, 15, 8, 12, 9, 12, 30]),
      TemperatureData('Concepcion Chiquirichapa', [12, 10, 14, 11, 13, 13, 17]),
      TemperatureData('Centro Universitario de Occidente', [8, 11, 9, 10, 12, 15, 16]),
    ];

    final List<TemperatureData> radiationDataList = [
      TemperatureData('Cantel', [5, 10, 7, 8, 6, 22, 15]),
      TemperatureData('Concepcion Chiquirichapa', [6, 8, 5, 7, 9, 12, 25]),
      TemperatureData('Centro Universitario de Occidente', [4, 7, 6, 5, 8, 12, 15]),
    ];

    return ListView(
      children: [
        _buildTitle('Temperatura'),
        ...temperatureDataList.map((data) => createTemperatureChart(data)).toList(),
        _buildTitle('Humedad'),
        ...humidityDataList.map((data) => createHumidityChart(data)).toList(),
        _buildTitle('Radiación'),
        ...radiationDataList.map((data) => createRadiationChart(data)).toList(),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget createTemperatureChart(TemperatureData data) {
    final List<Map<String, dynamic>> chartData = [];
    for (int i = 0; i < data.temperatures.length; i++) {
      chartData.add({'x': 'Día ${i + 1}', 'y': data.temperatures[i]});
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 250,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(10),
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            title: ChartTitle(text: data.location),
            legend: Legend(isVisible: false),
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <ChartSeries>[
              ColumnSeries<Map<String, dynamic>, String>(
                dataSource: chartData,
                xValueMapper: (datum, _) => datum['x'] as String,
                yValueMapper: (datum, _) => datum['y'] as double,
                name: 'Temperatura',
                color: Color.fromARGB(255, 71, 169, 88),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget createHumidityChart(TemperatureData data) {
    final List<Map<String, dynamic>> chartData = [];
    for (int i = 0; i < data.temperatures.length; i++) {
      chartData.add({'x': 'Día ${i + 1}', 'y': data.temperatures[i]});
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 250,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(10),
          child: Center(
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              title: ChartTitle(text: data.location),
              legend: Legend(isVisible: false),
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <ChartSeries>[
                ColumnSeries<Map<String, dynamic>, String>(
                  dataSource: chartData,
                  xValueMapper: (datum, _) => datum['x'] as String,
                  yValueMapper: (datum, _) => datum['y'] as double,
                  name: 'Humedad',
                  color: Color.fromARGB(255, 70, 144, 234),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget createRadiationChart(TemperatureData data) {
    final List<Map<String, dynamic>> chartData = [];
    for (int i = 0; i < data.temperatures.length; i++) {
      chartData.add({'x': 'Día ${i + 1}', 'y': data.temperatures[i]});
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 250,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(10),
          child: Center(
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              title: ChartTitle(text: data.location),
              legend: Legend(isVisible: false),
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <ChartSeries>[
                ColumnSeries<Map<String, dynamic>, String>(
                  dataSource: chartData,
                  xValueMapper: (datum, _) => datum['x'] as String,
                  yValueMapper: (datum, _) => datum['y'] as double,
                  name: 'Radiación',
                  color: Color.fromARGB(255, 207, 89, 38),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
