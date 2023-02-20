import 'package:flutter/material.dart';
import 'package:jap_tools/Screens/dakuonScreens/dakuon_chart_hiragana.dart';
import 'package:jap_tools/Screens/dakuonScreens/dakuon_chart_katakana.dart';
import 'package:jap_tools/Screens/hiraganaScreens/flash_cards_normal_hiragana.dart';
import 'package:jap_tools/Screens/hiraganaScreens/hiragana_chart.dart';
import 'package:jap_tools/Screens/hiraganaScreens/hiragana_exercises.dart';
import 'package:jap_tools/Screens/romaji_chart.dart';
import 'package:jap_tools/Widgets/card_element.dart';

class DakuonScreen extends StatelessWidget {
  DakuonScreen({super.key});
  List<Topic> topics = [
    Topic(name: "Dakuon Chart (Hiragana)", widgetData: DakuonHiaraganaChart()),
    Topic(name: "Dakuon Chart (Katakana)", widgetData: DakuonKatakanaChart()),
    // Topic(name: "Romaji Chart", widgetData: RomajiChart()),
    // Topic(name: "(No Romaji) Chart (Hiragana)", widgetData: NoRomajiChart()),
    // Topic(name: "(No Romaji) Chart (Katakana)", widgetData: NoRomajiChart()),
    // Topic(name: "Flashcards (Hiragana Romaji)", widgetData: FlashCards()),
    // Topic(name: "Flashcards (Katakana Romaji)", widgetData: FlashCards()),
    // Topic(name: "Flashcards (Hiragana Dakuon)", widgetData: FlashCardsNormal()),
    // Topic(name: "Flashcards (Katakana Dakuon)", widgetData: FlashCardsNormal()),
    // Topic(name: "Exercises", widgetData: HiraganaExercises())
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
          title: Text("Dakuon Learning Tools"),
        ));
  }
}

class Topic {
  final String name;
  final Widget widgetData;
  Topic({required this.name, required this.widgetData});
}
