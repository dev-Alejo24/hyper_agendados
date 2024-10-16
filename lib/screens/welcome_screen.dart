import 'package:flutter/material.dart';
import '../widgets/eps_button.dart';
import 'main_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Center(
                child: Text(
                  'HYPER AGENDADOS',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Divider(color: Colors.grey),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'BIEN VENIDO',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      '"NOMBRE DE USUARIO"',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'PARA HACER USO DE NUESTRA APP SELECCIONA LA E.PS A LA CUAL PERTENESES',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 40),
                    EpsButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MainScreen(epsColor: Colors.green)),
                        );
                      },
                      child: Image.network( // cambiar imagen --> crear carpeta de imagenes
                        'lib/images/emssanar.png',
                        height: 60,
                      ),
                    ),
                    const SizedBox(height: 20),
                    EpsButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MainScreen(epsColor: Colors.blue)),
                        );
                      },
                      child: Image.asset(
                        'lib/images/logo_nueva_eps.png',
                        height: 60,
                      ),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('SALIR'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.purple, backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.purple),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}