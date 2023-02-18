import 'package:flutter/material.dart';
import 'package:jap_tools/Widgets/character_widget.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class FlashCards extends StatefulWidget {
  const FlashCards({super.key});
  static const title = "Hiragana/ひらがな";

  @override
  State<FlashCards> createState() => _FlashCardsState();
}

class _FlashCardsState extends State<FlashCards> {
  List items = [];
  @override
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('Data/hiragana_characters.json');
    final data = await json.decode(response);
    setState(() {
      items = data;
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        children: [
          for (var i in items)
            CharacterWidget(title: i["character"], sound: i["romaji"])
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(FlashCards.title),
      ),
    );
  }
}
