import 'package:flutter/material.dart';

class HiraganaScreen extends StatelessWidget {
  const HiraganaScreen({super.key});
  static const title = "Hiragana/ひらがな";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(title),
      ),
    );
  }
}
