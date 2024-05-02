import 'package:app/components/drawer_content.dart';
import 'package:app/pages/cunoc/body.dart';
import 'package:flutter/material.dart';

// @author Mariano Camposeco {@literal (mariano1941@outlook.es)}
class Cunoc extends StatelessWidget {
  const Cunoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const DrawerContent(),
      appBar: AppBar(
        title: const Text('Cunoc'),
        centerTitle: true,
      ),
      body: const CunocBody(),
    );
  }
}
