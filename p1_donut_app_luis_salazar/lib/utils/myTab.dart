import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;

  // El constructor ahora tiene el nombre correcto
  const MyTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(40)
        ), // Color de fondo
        child: Image.asset(iconPath, color: Colors.grey[600],), // Mostrar el ícono
      ),
    );
  }
}
