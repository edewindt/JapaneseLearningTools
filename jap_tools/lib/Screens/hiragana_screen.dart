import 'package:flutter/material.dart';
import 'package:jap_tools/Widgets/character_widget.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class HiraganaScreen extends StatelessWidget {
  const HiraganaScreen({super.key});
  static const title = "Hiragana/ひらがな";
  @override
  Widget build(BuildContext context) {
    readJson();
    return Scaffold(
      body: GridView(
        children: [CharacterWidget(title: "さ")],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(title),
      ),
    );
  }
}

Future<void> readJson() async {
  final String response =
      await rootBundle.loadString('Data/hiragana_characters.json');
  final data = await json.decode(response);
  print(response);
// ...
}
