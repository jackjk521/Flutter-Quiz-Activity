// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_quiz_1/models/Jokes.dart';

class DisplayJokes extends StatelessWidget {
  final List<Jokes> jokeList;
  DisplayJokes(this.jokeList);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: jokeList.length,
          itemBuilder: (context, index) {
            return Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.purple)),
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.all(20.0),
              child: Text(jokeList[index].value.joke),
            );
          }),
    );
  }
}
