import 'package:flutter/material.dart';
import 'package:flutter_quiz_1/pages/Login.dart';
import 'package:flutter_quiz_1/routes.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.purple[700], // no accentColor ?
        textTheme: TextTheme(
          headline5: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 18.0),
        
        ),
      ),
        routes: routes,
        home: Login(),
  ));
}

