import 'package:app/components/drawer_content.dart';
import 'package:app/pages/home/body.dart';
import 'package:flutter/material.dart';

// @author Mariano Camposeco {@literal (mariano1941@outlook.es)}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const DrawerContent(),
      appBar: AppBar(
        title: const Text('Estaciones'),
        centerTitle: true,
      ),
      body: const HomeBody(),
    );
  }
}
