import 'package:flutter/material.dart';

class CommonPhrases_Screen extends StatelessWidget {
  const CommonPhrases_Screen({super.key});
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
