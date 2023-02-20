import 'package:flutter/material.dart';
import 'package:jap_tools/Widgets/character_widget.dart';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:jap_tools/Widgets/romanji_widget.dart';

class RomajiChart extends StatefulWidget {
  const RomajiChart({super.key});
  static const title = "Hiragana/ひらがな";

  @override
  State<RomajiChart> createState() => _RomajiChartState();
}

class _RomajiChartState extends State<RomajiChart> {
  List items = [];
  @override
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('data/katakana_characters.json');
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
            RomajiWidget(
              title: i["romaji"],
              sound: i["character"],
              visible: false,
            )
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(RomajiChart.title),
      ),
    );
  }
}
