import 'package:flutter/material.dart';
import 'package:jap_tools/card_element.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Topic> topics = [
    Topic(Name: "Hiragana/ひらがな"),
    Topic(Name: "Katakana/カタログ"),
    Topic(Name: "Dakuon/濁音"),
    Topic(Name: "Kanji/漢字"),
    Topic(Name: "Japanese Words"),
    Topic(Name: "Common Phrases")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1024),
            margin: EdgeInsets.only(top: 40),
            child: ListView(children: [
              for (var i in topics) CardElement(TextData: i.Name)
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
  final String Name;
  Topic({required this.Name});
}
