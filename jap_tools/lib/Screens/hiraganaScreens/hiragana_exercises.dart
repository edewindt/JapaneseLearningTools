import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jap_tools/Widgets/simple_card.dart';

class HiraganaExercises extends StatelessWidget {
  HiraganaExercises({super.key});
  Box box = Hive.box('store');
  List<Exercise> exercises = [
    Exercise(
        name:
            "Write out each Hiragana Individually 10 Times (Use The Chart or Flash Cards)"),
    Exercise(name: "Write out each Hiragana In Order 10 Times (Use The Chart)"),
    Exercise(
        name:
            "Write out each Hiragana Individually 10 Times (Use The Romaji Chart or Flash Cards(Romaji))"),
    Exercise(
        name:
            "Write out each Hiragana In Order 10 Times (Use The Romaji Chart)"),
    Exercise(name: "Write out each Hiragana Individually 10 Times From Memory"),
    Exercise(name: "Write out each Hiragana In Order 10 Times From Memory"),
    Exercise(name: "Read each Hiragana Outloud 10 Times (Use The Chart)"),
    Exercise(name: "Read each Hiragana Outloud 10 Times (Without Romaji)"),
    Exercise(name: "Say each Hiragana In Order Outloud 10 Times From Memory"),
    Exercise(
        name:
            "Say each Hiragana In Order Outloud 10 Times From Memory While Visualizing The Character"),
    Exercise(name: "Read 15 words using Hiragana (Use Hiragana Words List)"),
    Exercise(name: "Write 15 words From Memory using Hiragana")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1024),
            margin: EdgeInsets.only(top: 40),
            child: ListView(children: [
              for (var i = 0; i < exercises.length; i++)
                SimpleCard(
                  textData: exercises[i].name,
                  index: i,
                  prefix: "hir",
                )
            ]),
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Hiragana Exercises"),
        ));
  }
}

class Exercise {
  final String name;
  Exercise({required this.name});
}
