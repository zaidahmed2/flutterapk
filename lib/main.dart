import 'package:flutter/material.dart';
import 'pages/Login.dart';
import 'classes/MyTheme.dart';

import 'pages/MainTab.dart';
import 'pages/Products.dart';
import 'pages/MainSceenProduct.dart';
import 'pages/MainTabProduct.dart';
import 'pages/MainSceen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Ecomm App',
      theme: lightTheme,
      
      debugShowCheckedModeBanner: false,
      home: const MainScreen(title: 'Main Screen Page'),
    );
  }
}
