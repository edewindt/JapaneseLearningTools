import 'package:flutter/material.dart';

class SimpleCard extends StatelessWidget {
  final String textData;
  const SimpleCard({
    super.key,
    required this.textData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(child: Text(textData)),
        ));
  }
}
