import 'package:app/theme/theme_preferences.dart';
import 'package:app/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/home/home.dart';

// @author Mariano Camposeco {@literal (mariano1941@outlook.es)}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ThemePreferences.loadTheme();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
