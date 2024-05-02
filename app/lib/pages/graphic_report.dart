import 'package:app/components/drawer_content.dart';
import 'package:flutter/material.dart';

class GraphicReport extends StatelessWidget {
  const GraphicReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const DrawerContent(),
      appBar: AppBar(
        title: const Text('Gráfica de reportes'),
      ),
      body: const Center(
        child: Text('Gráfica Information'),
      ),
    );
  }
}
