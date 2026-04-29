import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LDSW Utilización de widgets'),
          backgroundColor: Colors.indigo,
        ),
        body: Column( // <--- WIDGET 1: COLUMN
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text( // <--- WIDGET 2: TEXT
                'Práctica de Widgets Básicos',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container( // <--- WIDGET 3: CONTAINER
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.amber[100],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.amber, width: 2),
              ),
              child: Row( // <--- WIDGET 4: ROW
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.star, color: Colors.orange),
                  Text('Elemento Row 1'),
                  Text('Elemento Row 2'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Stack( // <--- WIDGET 5: STACK
              alignment: Alignment.center,
              children: [
                Container(width: 150, height: 150, color: Colors.indigo[100]),
                Container(width: 100, height: 100, color: Colors.indigo[300]),
                const Text('Stack', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}