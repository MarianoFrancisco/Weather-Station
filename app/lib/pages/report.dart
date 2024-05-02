import 'package:app/components/drawer_content.dart';
import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const DrawerContent(),
      appBar: AppBar(
        title: const Text('Reportes'),
      ),
      body: const Center(
        child: Text('Reportes Information'),
      ),
    );
  }
}
