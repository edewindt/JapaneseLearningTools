import 'package:flutter/material.dart';
import 'package:jap_tools/Widgets/character_widget.dart';
import 'dart:convert';
import "dart:math";

import 'package:flutter/services.dart';

final _random = new Random();

class FlashCards extends StatefulWidget {
  const FlashCards({super.key});
  static const title = "Hiragana/ひらがな";

  @override
  State<FlashCards> createState() => _FlashCardsState();
}

class _FlashCardsState extends State<FlashCards> {
  List items = [];
  bool _isLoading = false;

  @override
  Future<void> readJson() async {
    setState(() {
      _isLoading = true;
    });
    final String response =
        await rootBundle.loadString('data/hiragana_characters.json');
    final data = await json.decode(response);
    setState(() {
      items = data;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  Widget build(BuildContext context) {
    return _isLoading
        ? Loading()
        : Scaffold(
            appBar: AppBar(
              title: Text("Hiragana FlashCards"),
            ),
            body: FlashCardLogic(items: items));
  }
}

class CharacterData {
  final String hiragana;
  final String romaji;
  CharacterData(this.hiragana, this.romaji);
}

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loaduing"),
      ),
    );
  }
}

class FlashCardLogic extends StatefulWidget {
  final items;
  FlashCardLogic({super.key, this.items});

  @override
  State<FlashCardLogic> createState() => _FlashCardLogicState();
}

class _FlashCardLogicState extends State<FlashCardLogic> {
  @override
  int index = 0;

  void scramble() {
    setState(() {
      index = _random.nextInt(widget.items.length);
      _spoil = true;
    });
  }

  @override
  void initState() {
    setState(() {
      index = _random.nextInt(widget.items.length);
      _spoil = true;
    });
    super.initState();
  }

  bool _spoil = true;

  Widget build(BuildContext context) {
    CharacterData currentCard = CharacterData(
        widget.items[index]["character"], widget.items[index]["romaji"]);
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 1024),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: CharacterWidget(
                title: currentCard.hiragana,
                sound: _spoil ? " " : currentCard.romaji,
                padding: 30.0,
              ),
            ),
            Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                child:
                    ElevatedButton(onPressed: scramble, child: Text("Next"))),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _spoil = false;
                    });
                  },
                  child: Text("Check Answer")),
            )
          ],
        ),
      ),
    );
  }
}
