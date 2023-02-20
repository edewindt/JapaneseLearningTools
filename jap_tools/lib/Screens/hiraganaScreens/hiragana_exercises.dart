import 'package:flutter/material.dart';
import 'package:jap_tools/Screens/common_phrases.dart';
import 'package:jap_tools/Screens/dakuon.dart';
import 'package:jap_tools/Screens/hiraganaScreens/hiragana_screen.dart';
import 'package:jap_tools/Screens/japanese_words.dart';
import 'package:jap_tools/Screens/kanji.dart';
import 'package:jap_tools/Widgets/card_element.dart';
import 'package:jap_tools/Widgets/simple_card.dart';

class HiraganaExercises extends StatelessWidget {
  HiraganaExercises({super.key});
  List<Exercise> exercises = [
    Exercise(name: "Write out each Hiragana 10 Times (Use The Chart)"),
    Exercise(name: "Read each Hiragana Outloud 10 Times (Use The Chart)"),
    Exercise(name: "Read as part of Word")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1024),
            margin: EdgeInsets.only(top: 40),
            child: ListView(children: [
              for (var i in exercises) SimpleCard(textData: i.name)
            ]),
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Japanese Learning Tools"),
        ));
  }
}

class Exercise {
  final String name;
  Exercise({required this.name});
}
