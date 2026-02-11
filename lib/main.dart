import 'package:flutter/material.dart';

void main() => runApp(const AppRestaurante());

class AppRestaurante extends StatelessWidget {
  const AppRestaurante({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Empleados(),
    );
  }
}

class Empleados extends StatelessWidget {
  const Empleados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Restaurante La Roma 6-J',
          style: TextStyle(color: Color.fromARGB(255, 46, 67, 75)),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 170, 217, 255),
        leading: const Icon(
          Icons.camera_alt,
          color: Color.fromARGB(255, 83, 134, 192),
        ),
        actions: const [
          Icon(Icons.restaurant, color: Color.fromARGB(255, 83, 134, 192)),
          SizedBox(width: 15),
          Icon(Icons.restaurant_menu, color: Color.fromARGB(255, 83, 134, 192)),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: ListView(
          children: [
            // TARJETA 1
            Card(
              elevation: 4,
              color: Colors.lightBlue[300],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: const ListTile( // Quitamos const si diera error por NetworkImage en versiones viejas, pero en las nuevas se quita del hijo
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://raw.githubusercontent.com/sanchez-herlinda/Imagenes_para_Flutter_6J-11-Feb-2026/refs/heads/main/empleado1.png'),
                ),
                title: Text('Alejandra Smith', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                subtitle: Text('Cocinera', style: TextStyle(color: Colors.white70)),
                trailing: Icon(Icons.favorite, color: Colors.white),
              ),
            ),
            const SizedBox(height: 15),
            // TARJETA 2
            Card(
              elevation: 4,
              color: Colors.lightBlue[400],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: const ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://raw.githubusercontent.com/sanchez-herlinda/Imagenes_para_Flutter_6J-11-Feb-2026/refs/heads/main/empleado3.png'),
                ),
                title: Text('María García', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                subtitle: Text('Mesera', style: TextStyle(color: Colors.white70)),
                trailing: Icon(Icons.favorite, color: Colors.white),
              ),
            ),
            const SizedBox(height: 15),
            // TARJETA 3
            Card(
              elevation: 4,
              color: Colors.blueAccent[100],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: const ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage('https://raw.githubusercontent.com/sanchez-herlinda/Imagenes_para_Flutter_6J-11-Feb-2026/refs/heads/main/empleado2.png'),
                ),
                title: Text('Lisa Doe', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                subtitle: Text('Gerente', style: TextStyle(color: Colors.white70)),
                trailing: Icon(Icons.favorite, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    ); 
  }
}