import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() =>
      _BottomNavState();
}

class _BottomNavState extends State {
  int _selectedTab = 0;

  List _pages = [
    const Center(
      child: Text("Home"),
    ),
    const Center(
      child: Text("Favorite"),
    ),
    const Center(
      child: Text("Account"),
    ),
    const Center(
      child: Text("More"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "Account"),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined), label: "Contact"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}