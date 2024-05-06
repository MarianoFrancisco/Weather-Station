import 'package:flutter/material.dart';
// para la grafica
import 'package:pie_chart/pie_chart.dart';
// @author Mariano Camposeco {@literal (mariano1941@outlook.es)}
class CunocBody extends StatelessWidget {
  
  const CunocBody({super.key});

    @override
  Widget build(BuildContext context) {
    //arreglo de nombres
    final  nombreElementos = [
      "Fecha y Hora",
      "Temperatura",
      "Humedad",
      "Radiacion",
      "Suelo 1",
      "Suelo 2",
      "Suelo 3",
      "Velocidad del Viento",
      "Precipitacion",
      "Humedad9",
    ];
    // map para elementos de informacion
    final Map<String, double> info = {
      "Flutter": 119,
      "React": 49,
      "Xamarin": 119,
      "Ionic": 2,
    };

    return Column(
      children: <Widget>[
        const Center(
          child: Text('Informacion de la estacion CUNOC', 
                    style: TextStyle(fontSize: 25)),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Table(
            border: TableBorder.all(color: Colors.white30),
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
                      child: Text('No. Parametro'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Informacion'),
                    ),
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Datos'),
                    ),
                  ),
                ],
              ),

              // ciclo de elementos
              for (int i = 0; i < 10; i++)
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text((i+1).toString()),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(nombreElementos[i]),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Datos'),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
        // para la comparacion de suelos
        const Center(
          child: Text('Visualizacion de Suelos'),
        ),
        Center(
          child: PieChart(
            dataMap: info,
            chartRadius: MediaQuery.of(context).size.width / 1.5,
            legendOptions: LegendOptions(
              legendPosition: LegendPosition.bottom,
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValuesInPercentage: true,
            ),
          ),
        ),        

        // para la direccion del viento
        const Center(
          child: Text('Direccion del viento'),
        ),
        Center(
          child: PieChart(
            dataMap: info,
            chartRadius: MediaQuery.of(context).size.width / 1.5,
            legendOptions: LegendOptions(
              legendPosition: LegendPosition.bottom,
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValuesInPercentage: true,
            ),
          ),
        ),
      ],
    );
  }
}
