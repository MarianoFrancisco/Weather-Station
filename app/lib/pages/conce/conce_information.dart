import 'package:app/components/drawer_content.dart';
import 'package:app/pages/conce/body.dart';
import 'package:flutter/material.dart';

// @author Mariano Camposeco {@literal (mariano1941@outlook.es)}
class Conce extends StatelessWidget {
  const Conce({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const DrawerContent(),
      appBar: AppBar(
        title: const Text('Concepción'),
        centerTitle: true,
      ),
      body: const ConceBody(),
    );
  }
}
