import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LDSW Home Screen',
      home: Scaffold(
        // Usamos un Stack para poner elementos encima de la imagen de fondo
        body: Stack(
          children: [
            // 1. IMAGEN DE FONDO
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://images.unsplash.com/photo-1550745165-9bc0b252726f?q=80&w=2070&auto=format&fit=crop'), 
                  fit: BoxFit.cover, // Para que cubra toda la pantalla
                ),
              ),
            ),
            // Capa oscura para que el texto se lea mejor
            Container(color: Colors.black.withOpacity(0.5)),
            
            // 2. CONTENIDO CENTRAL
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ICONO (Criterio de evaluación)
                  const Icon(
                    Icons.movie_filter, 
                    size: 80, 
                    color: Colors.white
                  ),
                  const SizedBox(height: 20),
                  
                  // NOMBRE DE LA APP
                  const Text(
                    'MI CATÁLOGO APP',
                    style: TextStyle(
                      fontSize: 32, 
                      fontWeight: FontWeight.bold, 
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  // MENSAJE DE BIENVENIDA / HELLO WORLD
                  const Text(
                    '¡Bienvenido! Hello World',
                    style: TextStyle(
                      fontSize: 18, 
                      color: Colors.white70
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}