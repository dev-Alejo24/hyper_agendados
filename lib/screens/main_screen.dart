import 'package:flutter/material.dart';
import '../widgets/service_button.dart';
import '../widgets/procedure_button.dart';

class MainScreen extends StatelessWidget {
  final Color epsColor;
  final String selectedEps; // Identificador de la EPS seleccionada

  const MainScreen({Key? key, required this.epsColor, required this.selectedEps, required String epsImage}) : super(key: key);

  // Mapa que asocia el identificador de la EPS con su respectiva imagen
  String getEpsImage(String eps) {
    const Map<String, String> epsImages = {
      'emssanar': 'lib/images/emssanar.png',
      'sanitas': 'lib/images/logo_nueva_eps.png',
    };

    return epsImages[eps] ?? 'lib/images/default.png'; // Imagen por defecto si no coincide con ninguna EPS
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: epsColor, // Cambia el color de fondo según la EPS seleccionada
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.lightBlue,
              child: const Center(
                child: Text(
                  'HYPER AGENDADOS',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.lightBlue.shade100,
              child: const Center(
                child: Text(
                  'SERVICIOS',
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: const [
                  ServiceButton(title: 'AUTORIZACIONES\nEN LINEA'),
                  ServiceButton(title: 'CITA CON\nESPECIALISTA'),
                  ServiceButton(title: 'FACTURACION'),
                  ServiceButton(title: 'CANCELAR\nCITA'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.lightBlue.shade100,
              child: const Center(
                child: Text(
                  'TRAMITES EN LINEA',
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  'Imprime certificados de incapacidad',
                  'Imprime certificado de pagos',
                  'Consulta preautorizaciones',
                  'Imprime duplicados de carné',
                  'Actualiza tus datos',
                  'Consulta de documentos pendientes',
                  'Consulta de la información de afiliación y cartera',
                  'Imprime certificados de afiliación.',
                ].map((text) => ProcedureButton(text: text)).toList(),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('MAS TRAMITES AQUI'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.lightBlue.shade100,
              ),
            ),
            const SizedBox(height: 16),
            Image.asset(getEpsImage(selectedEps), height: 50), // Imagen de la EPS seleccionada
            TextButton(
              onPressed: () {
                // Muestra la imagen de la EPS seleccionada en un diálogo
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Image.asset(getEpsImage(selectedEps), height: 100), // Imagen de la EPS seleccionada
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cerrar'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('NO PERTENEZCO A ESTA EPS'),
              style: TextButton.styleFrom(foregroundColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
