import 'package:flutter/material.dart';
import 'package:food_delivery/pages/favorites_page.dart';
import 'package:food_delivery/pages/home_page.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int selectedIndex = 0;

  void onItemTapped(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  List<Widget> bodyOptions = const [
    HomePage(),
    FavoritesPage(),
    Center(
      child: Text('Account Page'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Foodak'),
        backgroundColor: Colors.grey[100],
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: bodyOptions[selectedIndex],
      drawer: const Drawer(
        child: Center(
          child: Text('Iam in the drawer!'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.deepOrange,
        onTap: onItemTapped,
      ),
    );
  }
}
