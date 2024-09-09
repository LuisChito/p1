import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <Widget> myTabs = [
    //donut tab
    const MyTab(
      iconPath: 'lib/icons/donut.png')
    //burguers tab
    //smoothie tab
    //pancake tab
    //pizza tab
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Icon(Icons.menu, color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              "I want to",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
