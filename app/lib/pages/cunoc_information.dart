import 'package:app/components/drawer_content.dart';
import 'package:flutter/material.dart';

class Cunoc extends StatelessWidget {
  const Cunoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const DrawerContent(),
      appBar: AppBar(
        title: const Text('Cunoc'),
      ),
      body: const Center(
        child: Text('Cunoc Information'),
      ),
    );
  }
}
