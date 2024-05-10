import 'package:app/components/drawer_content.dart';
import 'package:app/pages/about/body.dart';
import 'package:flutter/material.dart';

// @author Mariano Camposeco {@literal (mariano1941@outlook.es)}
class AboutTI extends StatelessWidget {
  const AboutTI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const DrawerContent(),
      appBar: AppBar(
        title: const Text('Acerca de'),
        centerTitle: true,
      ),
      body: const AboutBody(),
    );
  }
}
