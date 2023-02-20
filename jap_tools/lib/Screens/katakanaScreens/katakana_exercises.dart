import 'package:flutter/material.dart';
import 'package:jap_tools/Screens/common_phrases.dart';
import 'package:jap_tools/Screens/hiraganaScreens/hiragana_screen.dart';
import 'package:jap_tools/Screens/japanese_words.dart';
import 'package:jap_tools/Screens/kanji.dart';
import 'package:jap_tools/Widgets/card_element.dart';
import 'package:jap_tools/Widgets/simple_card.dart';

class KatakanaExercises extends StatelessWidget {
  KatakanaExercises({super.key});
  List<Exercise> topics = [
    Exercise(
        name:
            "Write out each Katakana Individually 10 Times (Use The Chart or Flash Cards)"),
    Exercise(name: "Write out each Katakana In Order 10 Times (Use The Chart)"),
    Exercise(
        name:
            "Write out each Katakana Individually 10 Times (Use The Romaji Chart or Flash Cards(Romaji))"),
    Exercise(
        name:
            "Write out each Katakana In Order 10 Times (Use The Romaji Chart)"),
    Exercise(name: "Write out each Katakana Individually 10 Times From Memory"),
    Exercise(name: "Write out each Katakana In Order 10 Times From Memory"),
    Exercise(name: "Read each Katakana Outloud 10 Times (Use The Chart)"),
    Exercise(name: "Read each Katakana Outloud 10 Times (Without Romaji)"),
    Exercise(name: "Say each Katakana In Order Outloud 10 Times From Memory"),
    Exercise(
        name:
            "Say each Katakana In Order Outloud 10 Times From Memory While Visualizing The Character"),
    Exercise(name: "Read 15 words using Katakana (Use Katakana Words List)"),
    Exercise(name: "Write 15 words From Memory using Katakana")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1024),
            margin: EdgeInsets.only(top: 40),
            child: ListView(children: [
              for (var i in topics)
                SimpleCard(
                  textData: i.name,
                )
            ]),
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Katakana Exercises"),
        ));
  }
}

class Exercise {
  final String name;
  Exercise({required this.name});
}
