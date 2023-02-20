import 'package:flutter/material.dart';
import 'package:jap_tools/Screens/common_phrases.dart';
import 'package:jap_tools/Screens/katakanaScreens/flash_cards_normal_katakana.dart';
import 'package:jap_tools/Screens/romaji_chart.dart';
import 'package:jap_tools/Widgets/card_element.dart';

import 'flash_cards_katakana.dart';
import 'katakana_chart.dart';
import 'katakana_exercises.dart';

class KatakanaScreen extends StatelessWidget {
  KatakanaScreen({super.key});
  List<Topic> topics = [
    Topic(name: "Katakana Chart", widgetData: KatakanaChart()),
    Topic(name: "Romaji Chart", widgetData: RomajiChart()),
    Topic(name: "(No Romaji) Chart", widgetData: NoRomajiChart()),
    Topic(name: "Flashcards (Romaji)", widgetData: FlashCards()),
    Topic(name: "Flashcards (Normal)", widgetData: FlashCardsNormal()),
    Topic(name: "Exercises", widgetData: KatakanaExercises())
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
          title: Text("Katakana Learning Tools"),
        ));
  }
}

class Topic {
  final String name;
  final Widget widgetData;
  Topic({required this.name, required this.widgetData});
}
