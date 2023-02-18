import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CharacterWidget extends StatelessWidget {
  final String title;
  const CharacterWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 70),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 30),
          ),
        ],
      )),
    );
  }
}
