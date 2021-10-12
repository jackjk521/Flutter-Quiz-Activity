// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_quiz_1/pages/DisplayJoke.dart';
import 'package:flutter_quiz_1/pages/Profile.dart';
import 'package:flutter_quiz_1/pages/Settings.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  static const String routeName = "dashboard";

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  final pages = [
    DisplayJoke(),
    Profile(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => {
              currentIndex = index,
            }),
        currentIndex: currentIndex,
        backgroundColor: Colors.purple[300],
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}

