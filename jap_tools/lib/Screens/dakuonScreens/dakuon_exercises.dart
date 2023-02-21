import 'package:flutter/material.dart';
import 'package:jap_tools/Widgets/simple_card.dart';

class DakuonExercises extends StatelessWidget {
  DakuonExercises({super.key});
  List<Exercise> exercises = [
    Exercise(
        name:
            "Write out each Dakuon Individually 10 Times (Use The Chart or Flash Cards)"),
    Exercise(name: "Write out each Dakuon In Order 10 Times (Use The Chart)"),
    Exercise(
        name:
            "Write out each Dakuon Individually 10 Times (Use The Romaji Chart or Flash Cards(Romaji))"),
    Exercise(
        name: "Write out each Dakuon In Order 10 Times (Use The Romaji Chart)"),
    Exercise(name: "Write out each Dakuon Individually 10 Times From Memory"),
    Exercise(name: "Write out each Dakuon In Order 10 Times From Memory"),
    Exercise(name: "Read each Dakuon Outloud 10 Times (Use The Chart)"),
    Exercise(name: "Read each Dakuon Outloud 10 Times (Without Romaji)"),
    Exercise(name: "Say each Dakuon In Order Outloud 10 Times From Memory"),
    Exercise(
        name:
            "Say each Dakuon In Order Outloud 10 Times From Memory While Visualizing The Character"),
    Exercise(name: "Read 15 words using Dakuon (Use Dakuon Words List)"),
    Exercise(name: "Write 15 words From Memory using Dakuon")
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
                  prefix: "dak",
                )
            ]),
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Dakuon Exercises"),
        ));
  }
}

class Exercise {
  final String name;
  Exercise({required this.name});
}
