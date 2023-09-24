
import 'package:flutter/material.dart';

import 'home.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;
  List <Widget> itemWidgetList = [
     HomePage(),
     Text("data"),
     Text("data"),
     Text("data"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: itemWidgetList[index],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomNavigationBar(
          backgroundColor: Colors.greenAccent,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          
          items: 
          [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"home "),
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"home "),
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"home "),
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"home "),
            
      
          ]
          ),
      ),
    );
  }
}