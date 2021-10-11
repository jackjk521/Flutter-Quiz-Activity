// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static const String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile') 
      ),

      body: Center(
        child: Column(children:[
          Text("Hi there!"),
          Image.network('https://images.unsplash.com/photo-1543852786-1cf6624b9987?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80'),
        ],
        ),
       ),
      );
  }
}