import 'package:flutter/material.dart';

class DakuonScreen extends StatelessWidget {
  const DakuonScreen({super.key});
  static const title = "Dakuon/濁音";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
    );
  }
}
