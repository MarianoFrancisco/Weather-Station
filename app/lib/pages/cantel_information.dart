import 'package:app/components/drawer_content.dart';
import 'package:flutter/material.dart';

class Cantel extends StatelessWidget {
  const Cantel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const DrawerContent(),
      appBar: AppBar(
        title: const Text('Cantel'),
      ),
      body: const Center(
        child: Text('Cantel Information'),
      ),
    );
  }
}
