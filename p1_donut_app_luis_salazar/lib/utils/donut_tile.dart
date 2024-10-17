import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final String donutName;
  final dynamic donutColor;

  const DonutTile({super.key, required this.donutFlavor, required this.donutPrice, required this.donutName, required this.donutColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: (BoxDecoration(color: donutColor[50])),
    );
  }
}