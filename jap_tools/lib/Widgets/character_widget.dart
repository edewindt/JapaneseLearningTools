import 'package:flutter/material.dart';

class CharacterWidget extends StatelessWidget {
  final String title;
  final String sound;
  final double padding;
  const CharacterWidget(
      {super.key,
      required this.title,
      required this.sound,
      this.padding = 0.0});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
          child: Padding(
        padding: EdgeInsets.all(padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 70),
            ),
            Text(
              sound,
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      )),
    );
  }
}
