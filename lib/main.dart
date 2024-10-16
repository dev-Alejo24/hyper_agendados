import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const HyperAgendadosApp());
}

class HyperAgendadosApp extends StatelessWidget {
  const HyperAgendadosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hyper Agendados',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const WelcomeScreen(),
    );
  }
}