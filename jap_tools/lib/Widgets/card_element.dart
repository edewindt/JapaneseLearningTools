import 'package:flutter/material.dart';

class CardElement extends StatelessWidget {
  final String textData;
  final Widget destination;
  const CardElement({
    super.key,
    required this.textData,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => destination)),
      splashColor: Colors.lightBlue,
      hoverColor: Color.fromARGB(134, 3, 168, 244),
      child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(child: Text(textData)),
          )),
    );
  }
}
