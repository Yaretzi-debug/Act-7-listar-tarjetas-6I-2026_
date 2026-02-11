import 'package:flutter/material.dart';

void main() => runApp(const BakeryApp());

class BakeryApp extends StatelessWidget {
  const BakeryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFFFB7C5), // Cherry Blossom Pink
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFB7C5),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      home: const PastriesScreen(),
    );
  }
}

class PastriesScreen extends StatelessWidget {
  const PastriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fresh Tarts Bakery"),
        leading: const Icon(Icons.cake),
        actions: [
          IconButton(
            icon: const Icon(Icons.icecream, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.palette, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.format_list_numbered, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _crearTarjeta(
            "Yaretzi Tagle",
            "Chef especialista",
            "https://raw.githubusercontent.com/Yaretzi-debug/imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/postre%201.png",
          ),
          _crearTarjeta(
            "Cupcake Vainilla",
            "Con frosting de crema pura",
            "https://raw.githubusercontent.com/Yaretzi-debug/imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/postre%202.png",
          ),
          _crearTarjeta(
            "Cheesecake",
            "Frutos rojos seleccionados",
            "https://raw.githubusercontent.com/Yaretzi-debug/imagenes-para-flutter-6to-I-fecha-11-feb-2026/refs/heads/main/postre%203.png",
          ),
          _crearTarjeta(
            "Macarons",
            "Directo desde Francia",
            "https://images.pexels.com/photos/461431/pexels-photo-461431.jpeg",
          ),
        ],
      ),
    );
  }

  // Función auxiliar para crear las tarjetas (dentro de la misma clase)
  Widget _crearTarjeta(String titulo, String subtitulo, String urlImagen) {
    return Card(
      color: const Color(0xFFFFF0F5), // Rosa pastel (Lavender Blush)
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(urlImagen),
        ),
        title: Text(
          titulo,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitulo,
          style: const TextStyle(color: Colors.black),
        ),
        trailing: const Icon(
          Icons.favorite,
          color: Colors.grey,
        ),
      ),
    );
  }
}

