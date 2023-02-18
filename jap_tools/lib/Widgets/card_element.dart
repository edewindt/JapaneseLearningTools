import 'package:flutter/material.dart';

class CardElement extends StatelessWidget {
  final String TextData;
  const CardElement({
    super.key,
    required this.TextData,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print(TextData),
      splashColor: Colors.blueAccent,
      child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(TextData)),
          )),
    );
  }
}
