import 'package:flutter/material.dart';
import '../widgets/service_button.dart';
import '../widgets/procedure_button.dart';

class MainScreen extends StatelessWidget {
  final Color epsColor;

  const MainScreen({Key? key, required this.epsColor}) : super(key:key);

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
                  ServiceButton(title:'AUTORIZACIONES\nEN LINEA'),
                  ServiceButton(title:'CITA CON\nESPECIALISTA'),
                  ServiceButton(title:'FACTURACION'),
                  ServiceButton(title:'CANCELAR\nCITA'),
                ],
              ),
            ),
            Container(
              padding :const EdgeInsets.all(16.0,),
              color :Colors.lightBlue.shade100,
              child :const Center(child :Text('TRAMITES EN LINEA', style :TextStyle(fontSize :20, color :Colors.black87),),)
            ),
            Expanded(child :ListView(padding :const EdgeInsets.all(16.0,), children :
              ['Imprime certificados de incapacidad',
               'Imprime certificado de pagos',
               'Consulta preautorizaciones',
               'Imprime duplicados de carné',
               'Actualiza tus datos',
               'Consulta de documentos pendientes',
               'Consulta de la información de afiliación y cartera',
               'Imprime certificados de afiliación.',
              ].map((text) => ProcedureButton(text:text)).toList(),
            )),
            ElevatedButton(onPressed : () {}, child :const Text('MAS TRAMITES AQUI'), style :ElevatedButton.styleFrom(foregroundColor: Colors.black87, backgroundColor: Colors.lightBlue.shade100,)),
            const SizedBox(height :16,),
            Image.network('https://placeholder.com/wp-content/uploads/2018/10/placeholder.com-logo1.png', height :50,),
            TextButton(onPressed : () {}, child :const Text('NO PERTENESCO A ESTA EPS'), style :TextButton.styleFrom(foregroundColor: Colors.blue),)
          ],
        )
      )
    );
  }
}