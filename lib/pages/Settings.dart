// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_quiz_1/pages/Dashboard.dart';
import 'package:flutter_quiz_1/pages/Login.dart';

class Settings extends StatefulWidget {
  static String routeName = "/settings";

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: true,
        backgroundColor: Colors.purple[500],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Center(
            child: Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context, Dashboard.routeName);
                    Navigator.pushReplacementNamed(context, Login.routeName);
                  },
                  icon: const Icon(Icons.logout),
                  label: const Text("Logout"),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 30.0), //edited vertical
                    primary: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
