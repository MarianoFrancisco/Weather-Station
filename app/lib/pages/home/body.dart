import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Temperatura actual en tu ubicación actual"),
          Lottie.asset('assets/gifs/sun.json'),
          Text('23°C'),
        ],
      ),
    );
  }
}
