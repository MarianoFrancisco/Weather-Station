import 'package:app/components/drawer_content.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const DrawerContent(),
      appBar: AppBar(
        title: const Text('Estaciones'),
      ),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
