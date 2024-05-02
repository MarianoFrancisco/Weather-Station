import 'package:app/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Modo oscuro ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Switch(
            value: Provider.of<ThemeProvider>(context).isDarkMode,
            onChanged: (value) {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            activeColor: Theme.of(context).colorScheme.secondary,
            inactiveTrackColor:
                Theme.of(context).colorScheme.secondary.withOpacity(0.5),
          ),
          Text(
            Provider.of<ThemeProvider>(context).isDarkMode
                ? 'Activado'
                : 'Desactivado',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
