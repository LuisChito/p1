import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;

  // El constructor ahora tiene el nombre correcto
  const MyTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        color: Colors.grey[600], // Color de fondo
        child: Image.asset(iconPath), // Mostrar el ícono
      ),
    );
  }
}
