import 'package:flutter/material.dart';

class KanjiScreen extends StatelessWidget {
  const KanjiScreen({super.key});
  static const title = "Hiragana/ひらがな";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
    );
  }
}
