import 'package:flutter/material.dart';
import 'package:jap_tools/Widgets/character_widget.dart';

class HiraganaScreen extends StatelessWidget {
  const HiraganaScreen({super.key});
  static const title = "Hiragana/ひらがな";
  @override
  Widget build(BuildContext context) {
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
