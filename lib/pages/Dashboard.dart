// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  static const String routeName = "dashboard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard")
      ),

      body:Center(
          child: Container(
            child: Text("Sample Dashboard content"),
          ),

      ),


    );
  }
}
