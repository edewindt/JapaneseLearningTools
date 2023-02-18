import 'package:flutter/material.dart';

class JapaneseWordsScreen extends StatelessWidget {
  const JapaneseWordsScreen({super.key});
  static const title = "Japanese Words";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
    );
  }
}
