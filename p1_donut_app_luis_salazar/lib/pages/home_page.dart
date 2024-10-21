import 'package:flutter/material.dart';
import '../utils/myTab.dart';

import '../tab/BurgerTab.dart';
import '../tab/DonutTab.dart';
import '../tab/PanCakeTab.dart';
import '../tab/PizzaTab.dart';
import '../tab/SmoothieTab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

 @override
  State<HomePage> createState() => _HomePageState();
}

List<Widget> myTabs = [
  // Donut tab
  const MyTab(
    iconPath: 'lib/icons/donut.png',
    label: 'Donut', // Nombre debajo del icono
  ),
  // Burger tab
  const MyTab(
    iconPath: 'lib/icons/burger.png',
    label: 'Burger', // Nombre debajo del icono
  ),
  // Smoothie tab
  const MyTab(
    iconPath: 'lib/icons/smoothie.png',
    label: 'Smoothie', // Nombre debajo del icono
  ),
  // Pizza tab
  const MyTab(
    iconPath: 'lib/icons/pizza.png',
    label: 'Pizza', // Nombre debajo del icono
  ),
  // Pancakes
  const MyTab(
    iconPath: 'lib/icons/pancakes.png',
    label: 'Pancakes', // Nombre debajo del icono
  ),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController( 
      length: 5, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:  Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Icon(
              Icons.menu,
              color: Colors.grey[800]
                   ),
          ),
         actions: const[Padding(
           padding: EdgeInsets.only(right: 25.0),
           child: Icon(Icons.person),
         )
         ],
       ),
       body: Column(children: [
        //texto "i want to eat"
        const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Row(
            children: [
              Text("I want to ", style: TextStyle(fontSize: 24), ),
              Text("Eat", style :TextStyle(fontSize: 24, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
          ],
          ),
        ),
        //tab bar
        TabBar(tabs:myTabs),
        //tab bar view
         const Expanded(
          child: TabBarView(children: [
         DonutTab(),
         BurgerTab(),
         SmoothieTab(),
         PanCakeTab(),
         PizzaTab()
        ])
        ),
       ],),
       ),
    ); //Icon       
  }
}