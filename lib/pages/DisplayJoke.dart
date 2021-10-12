// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_quiz_1/models/Jokes.dart';
import 'package:flutter_quiz_1/widgets/DisplayJokes.dart';
import 'package:http/http.dart' show get;

class DisplayJoke extends StatefulWidget {
  const DisplayJoke({Key? key}) : super(key: key);

  static const String routeName = "DisplayJoke";

  @override
  _DisplayJokeState createState() => _DisplayJokeState();
}

class _DisplayJokeState extends State<DisplayJoke> {
  String url = "api.icndb.com";
  List<Jokes> jokesList = [];

  void fetchJoke() async {
    String path = "/jokes/random";
    try {
      var response = await get(Uri.https(url, path));
      Jokes joke = Jokes.fromJSON(jsonDecode(response.body));
      jokesList.add(joke);
    } catch (err) {}
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.purple[500],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: const Text("Click on + button to display Chuck Norris joke"),
          ),
          DisplayJokes(jokesList),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple[400],
        onPressed: fetchJoke,
        child: const Icon(Icons.add),
      ),
    );
  }
}
