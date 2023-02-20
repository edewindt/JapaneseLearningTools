import 'package:flutter/material.dart';
import 'package:jap_tools/Screens/common_phrases.dart';
import 'package:jap_tools/Screens/dakuon.dart';
import 'package:jap_tools/Screens/hiraganaScreens/hiragana_screen.dart';
import 'package:jap_tools/Screens/japanese_words.dart';
import 'package:jap_tools/Screens/kanji.dart';
import 'package:jap_tools/Widgets/card_element.dart';

class KatakanaExercises extends StatelessWidget {
  KatakanaExercises({super.key});
  List<Topic> topics = [
    Topic(name: "Random Exercises", widgetData: CommonPhrasesScreen()),
    Topic(name: "Write 10 Times", widgetData: CommonPhrasesScreen()),
    Topic(name: "Repeat Outloud 10 Times", widgetData: CommonPhrasesScreen()),
    Topic(name: "Read as part of Word", widgetData: CommonPhrasesScreen())
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
                CardElement(
                  textData: i.name,
                  destination: i.widgetData,
                )
            ]),
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Japanese Learning Tools"),
        ));
  }
}

class Topic {
  final String name;
  final Widget widgetData;
  Topic({required this.name, required this.widgetData});
}