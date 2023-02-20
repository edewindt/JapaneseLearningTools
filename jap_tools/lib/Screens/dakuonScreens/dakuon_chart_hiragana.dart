import 'package:flutter/material.dart';
import 'package:jap_tools/Widgets/character_widget.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class DakuonHiaraganaChart extends StatefulWidget {
  const DakuonHiaraganaChart({super.key});
  static const title = "Dakuon Hiragana/ひらがな";

  @override
  State<DakuonHiaraganaChart> createState() => _DakuonHiaraganaChartState();
}

class _DakuonHiaraganaChartState extends State<DakuonHiaraganaChart> {
  List items = [];
  @override
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('data/dakuon_hiragana.json');
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
        title: const Text(DakuonHiaraganaChart.title),
      ),
    );
  }
}

class NoRomajiChart extends StatefulWidget {
  const NoRomajiChart({super.key});
  static const title = "Hiragana/ひらがな";

  @override
  State<NoRomajiChart> createState() => _NoRomajiChartState();
}

class _NoRomajiChartState extends State<NoRomajiChart> {
  List items = [];
  @override
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('data/hiragana_characters.json');
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
            CharacterWidget(
              title: i["character"],
              sound: i["romaji"],
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
        title: const Text(NoRomajiChart.title),
      ),
    );
  }
}
