import 'package:flutter/material.dart';
import 'package:jap_tools/Widgets/character_widget.dart';
import 'dart:convert';
import "dart:math";

import 'package:flutter/services.dart';
import 'package:jap_tools/Widgets/romanji_widget.dart';

final _random = new Random();

class FlashCardsNormal extends StatefulWidget {
  const FlashCardsNormal({super.key});
  static const title = "Hiragana/ひらがな";

  @override
  State<FlashCardsNormal> createState() => _FlashCardsNormalState();
}

class _FlashCardsNormalState extends State<FlashCardsNormal> {
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
  var var_items;
  void scramble() {
    setState(() {
      int last_index = index;
      if (var_items.length < 2) {
        Navigator.of(context).pop();
        return;
      }
      var_items.removeAt(last_index);
      index = _random.nextInt(var_items.length);
      _spoil = true;
    });
  }

  void initState() {
    setState(() {
      var_items = widget.items;
      index = _random.nextInt(widget.items.length);
      _spoil = true;
    });
    super.initState();
  }

  bool _spoil = true;

  Widget build(BuildContext context) {
    CharacterData currentCard = CharacterData(
        widget.items[index]["romaji"], widget.items[index]["character"]);
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 1024),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: RomajiWidget(
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
