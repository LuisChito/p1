import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  
  const MyWidget({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        color: Colors.grey[600], // Corrección del color
        child: Image.asset(iconPath),
      ),
    );
  }
}
