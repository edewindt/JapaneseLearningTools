import 'package:flutter/material.dart';

class CommonPhrasesScreen extends StatelessWidget {
  const CommonPhrasesScreen({super.key});
  static const title = "Common Phrases";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
    );
  }
}
