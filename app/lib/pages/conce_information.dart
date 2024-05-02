import 'package:app/components/drawer_content.dart';
import 'package:flutter/material.dart';

class Conce extends StatelessWidget {
  const Conce({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const DrawerContent(),
      appBar: AppBar(
        title: const Text('Conce'),
      ),
      body: const Center(
        child: Text('Conce Information'),
      ),
    );
  }
}
