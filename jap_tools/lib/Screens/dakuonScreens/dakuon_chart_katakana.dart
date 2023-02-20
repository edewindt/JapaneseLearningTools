import 'package:flutter/material.dart';
import 'package:jap_tools/Widgets/character_widget.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class DakuonKatakanaChart extends StatefulWidget {
  const DakuonKatakanaChart({super.key});
  static const title = "Dakuon Katakana/カタカナ";

  @override
  State<DakuonKatakanaChart> createState() => _DakuonKatakanaChartState();
}

class _DakuonKatakanaChartState extends State<DakuonKatakanaChart> {
  List items = [];
  @override
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('data/dakuon_katakana.json');
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
        title: const Text(DakuonKatakanaChart.title),
      ),
    );
  }
}

class NoRomajiChartKatakana extends StatefulWidget {
  const NoRomajiChartKatakana({super.key});
  static const title = "Hiragana/ひらがな";

  @override
  State<NoRomajiChartKatakana> createState() => _NoRomajiChartKatakanaState();
}

class _NoRomajiChartKatakanaState extends State<NoRomajiChartKatakana> {
  List items = [];
  @override
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('data/dakuon_katakana.json');
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
        title: const Text(NoRomajiChartKatakana.title),
      ),
    );
  }
}
