import 'package:app/components/custom_inkwell.dart';
import 'package:app/components/theme_toggle.dart';
import 'package:app/pages/cunoc_information.dart';
import 'package:app/pages/home.dart';
import 'package:flutter/material.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            margin: const EdgeInsets.only(top: 50, bottom: 20),
            child: Image.asset('assets/logo.png'),
          ),
          const Text(
            "Estaciones Meteorológicas",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          CustomInkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Home()));
            },
            imagePath: 'assets/logo.png',
            child: const Text("Inicio"),
          ),
          CustomInkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Cunoc()));
            },
            imagePath: 'assets/logo.png',
            child: const Text("Cunoc"),
          ),
          const ThemeToggle(),
        ],
      ),
    );
  }
}
