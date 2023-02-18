import 'package:flutter/material.dart';

class JapaneseWordsScreen extends StatelessWidget {
  const JapaneseWordsScreen({super.key});
  static const title = "Japanese Words";
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
