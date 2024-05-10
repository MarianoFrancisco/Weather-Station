import 'package:flutter/material.dart';

// @author Mariano Camposeco {@literal (mariano1941@outlook.es)}
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'En esta aplicación se muestran los datos de las estaciones meteorológicas del Centro Universitario de Occidente.',
        textAlign: TextAlign.center,
      ),
    );
  }
}
