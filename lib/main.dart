import 'package:flutter/material.dart';
import 'package:food_delivery/pages/bottom_navbar.dart';
import 'package:food_delivery/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodak - Food Delivery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavBarPage(),
    );
  }
}
