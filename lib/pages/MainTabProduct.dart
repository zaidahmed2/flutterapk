import 'package:flutter/material.dart';

import 'aboutus.dart';
import 'contactus.dart';
import 'MainSceenProduct.dart';
import 'MainSceen.dart';

class MainTabProductPage extends StatefulWidget {
  const MainTabProductPage({super.key, required this.title});

  final String title;

  @override
  State<MainTabProductPage> createState() => _MainTabProductPageState();
}

class _MainTabProductPageState extends State<MainTabProductPage> {
 

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: const TabBarView(children: [
          MainScreenProduct(title: "Product"),
          MainScreen(title: "Login"),
          ContactUs(title: "Contact Us")
        ]),
        bottomNavigationBar: SafeArea(
            child: TabBar(tabs: [
          Tab(icon: Icon(Icons.home), text: "Product"),
          Tab(icon: Icon(Icons.access_alarm), text: "Login"),
          Tab(icon: Icon(Icons.contact_emergency), text: "Cart")
        ])),
      ),
    );
  }
}
