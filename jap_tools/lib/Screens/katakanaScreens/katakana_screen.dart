import 'package:flutter/material.dart';
import 'package:jap_tools/Screens/common_phrases.dart';
import 'package:jap_tools/Screens/hiraganaScreens/flash_cards_normal_hiragana.dart';
import 'package:jap_tools/Screens/hiraganaScreens/hiragana_chart.dart';
import 'package:jap_tools/Screens/hiraganaScreens/hiragana_exercises.dart';
import 'package:jap_tools/Screens/japanese_words.dart';
import 'package:jap_tools/Widgets/card_element.dart';

import 'flash_cards_hiragana.dart';
import 'katakana_chart.dart';

class KatakanaScreen extends StatelessWidget {
  KatakanaScreen({super.key});
  List<Topic> topics = [
    Topic(name: "Katakana Chart", widgetData: KatakanaChart()),
    Topic(name: "Flashcards (Romaji)", widgetData: FlashCards()),
    Topic(name: "Flashcards (Normal)", widgetData: FlashCardsNormal()),
    Topic(name: "Exercises", widgetData: KatakanaExercises()),
    Topic(name: "Test Proficiency", widgetData: CommonPhrasesScreen())
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
