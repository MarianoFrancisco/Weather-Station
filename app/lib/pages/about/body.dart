import 'package:flutter/material.dart';

class AboutBody extends StatelessWidget {
  const AboutBody({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          Center(
            child: Text(
              "Equipo de Desarrollo",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          _buildPersonItem("Mariano Francisco Camposeco Camposeco"),
          _buildPersonItem("Pedro Ricardo Gordillo González"),
          _buildPersonItem("Luis Nery Cifuentes Rodas"),
          _buildPersonItem("Manuel Antonio Rojas Paxtor"),
          _buildPersonItem("Luis Fernando Sánchez Santos"),
          _buildPersonItem("Carlos Alexis Ovalle de León"),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildPersonItem(String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        name,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
