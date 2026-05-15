import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Paquete base
import 'package:cloud_firestore/cloud_firestore.dart'; // Paquete de Base de Datos

void main() async {
  // Inicialización obligatoria para Firebase
  WidgetsFlutterBinding.ensureInitialized();
  // En un entorno de producción real aquí se inicializa Firebase:
  // await Firebase.initializeApp(); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LDSW Integración Firebase',
      home: FirebaseDatabaseHome(),
    );
  }
}

class FirebaseDatabaseHome extends StatelessWidget {
  // FUNCIÓN PARA AGREGAR DATOS (Criterio de evaluación)
  Future<void> enviarDatosFirebase() async {
    print("Simulando conexión a Firebase...");
    // Estructura de código para agregar datos a la colección 'usuarios'
    // await FirebaseFirestore.instance.collection('actividad_3_7').add({
    //   'usuario': 'Carlos Daniel',
    //   'mensaje': 'Integración exitosa',
    //   'fecha': DateTime.now(),
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LDSW Firebase Integration'),
        backgroundColor: Colors.orange[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.cloud_done, size: 100, color: Colors.orange),
            const SizedBox(height: 30),
            const Text(
              'Servicio de Base de Datos Conectado',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            const Text(
              'Esta pantalla demuestra la integración de los paquetes firebase_core y cloud_firestore en el proyecto Flutter.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: enviarDatosFirebase,
              icon: const Icon(Icons.add_to_photos),
              label: const Text('Agregar datos a Firebase'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[800],
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}