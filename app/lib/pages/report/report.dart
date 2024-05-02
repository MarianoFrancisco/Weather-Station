import 'package:app/components/drawer_content.dart';
import 'package:app/pages/report/body.dart';
import 'package:flutter/material.dart';

// @author Mariano Camposeco {@literal (mariano1941@outlook.es)}
class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const DrawerContent(),
      appBar: AppBar(
        title: const Text('Reportes'),
        centerTitle: true,
      ),
      body: const ReportBody(),
    );
  }
}
