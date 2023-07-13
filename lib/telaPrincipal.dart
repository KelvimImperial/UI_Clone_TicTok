import "package:flutter/material.dart";
import 'package:flutter_application_1/freelancer/plus.dart';
import 'package:flutter_application_1/freelancer/profile.dart';
import 'package:flutter_application_1/freelancer/search.dart';

import 'home.dart';
import 'inbox.dart';

class TelaPrincipalPage extends StatefulWidget {
  TelaPrincipalPageState createState() {
    return TelaPrincipalPageState();
  }
}

class TelaPrincipalPageState extends State<TelaPrincipalPage> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserHomePage(),
    UserInboxPage(),
    UserPlusPage(),
    UserSearchPage(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _navigateBottomBar,
            
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Casa"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Procurar"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_box_rounded), label: " "),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_rounded), label: "Inbox"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
            ]));
  }
}
