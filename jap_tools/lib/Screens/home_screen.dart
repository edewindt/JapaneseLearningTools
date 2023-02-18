import 'package:flutter/material.dart';
import 'package:jap_tools/Screens/common_phrases.dart';
import 'package:jap_tools/Screens/dakuon.dart';
import 'package:jap_tools/Screens/hiragana_screen.dart';
import 'package:jap_tools/Screens/japanese_words.dart';
import 'package:jap_tools/Screens/kanji.dart';
import 'package:jap_tools/Widgets/card_element.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Topic> topics = [
    Topic(name: "Hiragana/ひらがな", widgetData: HiraganaScreen()),
    Topic(name: "Katakana/カタログ", widgetData: CommonPhrasesScreen()),
    Topic(name: "Dakuon/濁音", widgetData: DakuonScreen()),
    Topic(name: "Kanji/漢字", widgetData: KanjiScreen()),
    Topic(name: "Japanese Words", widgetData: JapaneseWordsScreen()),
    Topic(name: "Common Phrases", widgetData: CommonPhrasesScreen())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1024),
            margin: EdgeInsets.only(top: 40),
            child: ListView(children: [
              for (var i in topics) CardElement(TextData: i.name)
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
