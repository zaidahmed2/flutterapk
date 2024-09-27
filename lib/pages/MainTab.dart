import 'package:flutter/material.dart';

import 'aboutus.dart';
import 'contactus.dart';
import 'MainSceen.dart';

class MainTabPage extends StatefulWidget {
  const MainTabPage({super.key, required this.title});

  final String title;

  @override
  State<MainTabPage> createState() => _MainTabPageState();
}

class _MainTabPageState extends State<MainTabPage> {
 

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: const TabBarView(children: [
          MainScreen(title: "Main Screen"),
          AboutUs(title: "About Us"),
          ContactUs(title: "Contact Us")
        ]),
        bottomNavigationBar: SafeArea(
            child: TabBar(tabs: [
          Tab(icon: Icon(Icons.home), text: "Main"),
          Tab(icon: Icon(Icons.access_alarm), text: "About"),
          Tab(icon: Icon(Icons.contact_emergency), text: "Contact")
        ])),
      ),
    );
  }
}
