import 'package:flutter/material.dart';

class DakuonScreen extends StatelessWidget {
  const DakuonScreen({super.key});
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
