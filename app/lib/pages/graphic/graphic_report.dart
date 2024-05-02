import 'package:app/components/drawer_content.dart';
import 'package:app/pages/graphic/body.dart';
import 'package:flutter/material.dart';

// @author Mariano Camposeco {@literal (mariano1941@outlook.es)}
class GraphicReport extends StatelessWidget {
  const GraphicReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const DrawerContent(),
      appBar: AppBar(
        title: const Text('Gráficas aquí'),
        centerTitle: true,
      ),
      body: const GraphicReportBody(),
    );
  }
}
