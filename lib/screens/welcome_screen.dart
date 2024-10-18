import 'package:flutter/material.dart';
import '../widgets/eps_button.dart'; // Mantenemos los botones importados
import 'main_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HYPER AGENDADOS',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black, // Texto negro
          ),
        ),
        backgroundColor: Colors.white, // Fondo blanco
        centerTitle: true, // Título centrado
        elevation: 0, // Sin sombra
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Obtenemos el ancho disponible para saber si es móvil o PC
          double width = MediaQuery.of(context).size.width;
          bool isLargeScreen = width >= 600; // Para considerar pantallas de PC

          return SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Espacio para login
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          SizedBox(
                            width: isLargeScreen ? 400 : 300, // Ancho adaptable
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'USUARIO',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: isLargeScreen ? 400 : 300,
                            child: TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'CONTRASEÑA',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Acción para "Olvidé mis datos"
                                },
                                child: const Text('OLVIDÉ MIS DATOS'),
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.black87,
                                  backgroundColor: Colors.lightBlue,
                                ),
                              ),
                              const SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {
                                  // Acción para "Registrar"
                                },
                                child: const Text('REGISTRAR'),
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.black87,
                                  backgroundColor: Colors.lightBlue,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Logo Nueva EPS
                    const SizedBox(height: 40),
                    Image.asset(
                      'lib/images/logo_nueva_eps.png', // Cambiar por la ruta correcta de la imagen
                      height: 60,
                    ),
                    const SizedBox(height: 20),

                    // Botones Nueva EPS con funcionalidad
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          EpsButton(
                            onPressed: () {
                              // Acción para ingresar a Régimen Subsidiado
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MainScreen(
                                    epsColor: Colors.blue,
                                    epsImage: 'lib/images/logo_nueva_eps.png',
                                    selectedEps: 'Régimen Subsidiado',
                                  ),
                                ),
                              );
                            },
                            child: const Text('RÉGIMEN SUBSIDIADO'),
                          ),
                          const SizedBox(height: 10),
                          EpsButton(
                            onPressed: () {
                              // Acción para ingresar a Régimen Contributivo
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MainScreen(
                                    epsColor: Colors.blue,
                                    epsImage: 'lib/images/logo_nueva_eps.png',
                                    selectedEps: 'Régimen Contributivo',
                                  ),
                                ),
                              );
                            },
                            child: const Text('RÉGIMEN CONTRIBUTIVO'),
                          ),
                          const SizedBox(height: 10),
                          EpsButton(
                            onPressed: () {
                              // Acción para ingresar a Prestadores de Salud
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MainScreen(
                                    epsColor: Colors.blue,
                                    epsImage: 'lib/images/logo_nueva_eps.png',
                                    selectedEps: 'Prestadores de Salud',
                                  ),
                                ),
                              );
                            },
                            child: const Text('PRESTADORES DE SALUD'),
                          ),
                        ],
                      ),
                    ),

                    // Logo Emssanar
                    const SizedBox(height: 40),
                    Image.asset(
                      'lib/images/emssanar.png', // Cambiar por la ruta correcta de la imagen
                      height: 60,
                    ),
                    const SizedBox(height: 20),

                    // Botones Emssanar con funcionalidad
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          EpsButton(
                            onPressed: () {
                              // Acción para ingresar a Régimen Subsidiado
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MainScreen(
                                    epsColor: Colors.green,
                                    epsImage: 'lib/images/emssanar.png',
                                    selectedEps: 'Régimen Subsidiado',
                                  ),
                                ),
                              );
                            },
                            child: const Text('RÉGIMEN SUBSIDIADO'),
                          ),
                          const SizedBox(height: 10),
                          EpsButton(
                            onPressed: () {
                              // Acción para ingresar a Régimen Contributivo
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MainScreen(
                                    epsColor: Colors.green,
                                    epsImage: 'lib/images/emssanar.png',
                                    selectedEps: 'Régimen Contributivo',
                                  ),
                                ),
                              );
                            },
                            child: const Text('RÉGIMEN CONTRIBUTIVO'),
                          ),
                          const SizedBox(height: 10),
                          EpsButton(
                            onPressed: () {
                              // Acción para ingresar a Prestadores de Salud
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MainScreen(
                                    epsColor: Colors.green,
                                    epsImage: 'lib/images/emssanar.png',
                                    selectedEps: 'Prestadores de Salud',
                                  ),
                                ),
                              );
                            },
                            child: const Text('PRESTADORES DE SALUD'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
