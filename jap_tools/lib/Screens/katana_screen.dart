import 'package:flutter/material.dart';

class KatakanaScreen extends StatelessWidget {
  const KatakanaScreen({super.key});
  static const title = "Katakana/カタログ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
    );
  }
}
