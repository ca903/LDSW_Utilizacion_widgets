import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LDSW Peticiones HTTP',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LDSW Peticiones HTTP'),
          backgroundColor: Colors.redAccent,
        ),
        body: const PokemonCenter(),
      ),
    );
  }
}

class PokemonCenter extends StatefulWidget {
  const PokemonCenter({super.key});
  @override
  State<PokemonCenter> createState() => _PokemonCenterState();
}

class _PokemonCenterState extends State<PokemonCenter> {
  String info = "Cargando datos...";
  String img = "";

  @override
  void initState() {
    super.initState();
    pedirDatos();
  }

  Future<void> pedirDatos() async {
    // PETICIÓN HTTP A POKEAPI
    final res = await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/pikachu'));
    if (res.statusCode == 200) {
      final jsonRes = json.decode(res.body);
      setState(() {
        info = jsonRes['name'].toString().toUpperCase();
        img = jsonRes['sprites']['front_default'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Resultado de consulta HTTP:', style: TextStyle(fontSize: 16)),
          const SizedBox(height: 20),
          if (img.isNotEmpty) Image.network(img, height: 180),
          Text(info, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: pedirDatos, 
            style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            child: const Text("Actualizar desde API", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}