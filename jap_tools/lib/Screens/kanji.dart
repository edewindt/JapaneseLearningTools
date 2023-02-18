import 'package:flutter/material.dart';

class KanjiScreen extends StatelessWidget {
  const KanjiScreen({super.key});
  static const title = "Kanji/漢字";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
    );
  }
}
